'use strict';
var mysql = require('mysql');
var admin = require("firebase-admin");

var serviceAccount = require("../configs/hopsteriosapp-firebase-adminsdk-3wzyp-80897431cc.json");

admin.initializeApp({
	credential: admin.credential.cert(serviceAccount),
	databaseURL: "https://hopsteriosapp.firebaseio.com"
});

var pool = mysql.createPool({
	host: 'localhost',
	user: 'root',
	password: 'root',
	database: 'spds_db'
});

exports.updateFirebaseTocken = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Save device tocken")

	pool.getConnection(function (err, connection) {
		var sql = mysql.format("update users SET firebaseToken = ? where userId=?", [req.body.firebaseToken, req.body.userId]);

		connection.query(sql, function (error, results, fields) {
			connection.release();
			if (error) {
				res.status(400).send({
					status: false
				});
			}

			if (results.affectedRows == 0) {
				res.status(200).send({
					status: false,
					user: results
				});
			} else {
				res.status(200).send({
					status: true,
					user: results
				});
			}
		});
	});
}

exports.sendRequestToDriver = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Send Request to driver")

	var driverRouteId = req.body.driverRouteId;
	var passengerFrom = req.body.passengerFrom;
	var passengerTo = req.body.passengerTo;
	var time = req.body.time;
	var tripDate = req.body.tripDate;
	var driverId = req.body.driverId;
	var passengerId = req.body.passengerId;

	var driverFirebaseToken = ""

	pool.getConnection(function (err, connection) {

		// Insert into route_requests table
		var values = {
			routeId: req.body.driverRouteId,
			passengerId: req.body.passengerId,
			driverId: req.body.driverId,
			isAccepted: 0,
			fromLatitude: req.body.fromLatitude,
			fromLongitude: req.body.fromLongitude,
			toLatitude: req.body.toLatitude,
			toLongitude: req.body.toLongitude,
			distance: req.body.distance
		};

		connection.query('INSERT INTO route_requests SET ?', values, function (error, requestResults, fields) {
			if (error) {
				console.log(error)
				res.status(400).send({
					status: false,
					result: error
				});
			}

			// Insert into Firebase realtime database
			var db = admin.database();
			var requestId = String(requestResults.insertId)
			var ref = db.ref("route-requests/"+requestId);
			
			ref.set({
				"data": {
					requestId: requestId,
					routeId: req.body.driverRouteId,
					driverId: req.body.driverId,
					passengerId: req.body.passengerId
				}	
			});

			// Send push notification to driver
			var sql = mysql.format("select * from users where userId=?", [driverId]);

			connection.query(sql, function (error, results, fields) {
				connection.release();
				if (error) {
					console.log(error)
					res.status(200).send(error);
				}

				driverFirebaseToken = results[0]["firebaseToken"];

				var payload = {
					notification: {
						title: "New Request",
						body: "Please open notification to accept request"
					},
					data: {
						notificationCode: "0",
						passengerFrom: passengerFrom,
						passengerTo: passengerTo,
						time: time,
						tripDate: tripDate,
						requestId: String(requestResults.insertId)
					}
				};

				var options = {
					priority: "high",
					timeToLive: 60 * 60 * 24
				};

				// console.log("---------")
				// console.log(driverFirebaseToken)
				// console.log("---------")

				admin.messaging().sendToDevice(driverFirebaseToken, payload, options).then(function (response) {
					console.log(new Date(Date.now()).toLocaleString() + " - Successfully sent push notification");

					res.status(200).send({
						status: true,
						response: response
					});
				}).catch(function (error) {
					console.log("Error sending message:", error);

					res.status(400).send({
						status: false,
						response: error
					});
				});
			});
		});
	});
}

exports.acceptRequest = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Accept repquest by driver")

	pool.getConnection(function (err, connection) {

		// Get passenger Id
		var sqlQuery = mysql.format("select * from route_requests where requestId=?", [req.body.requestId]);
		connection.query(sqlQuery, function (error, results, fields) {
			if (error) {
				res.status(200).send(error);
			}

			// Get Firebase token of passenger
			var sqlQuery2 = mysql.format("select * from users where userId=?", [results[0]["passengerId"]]);
			connection.query(sqlQuery2, function (error, result, fields) {
				if (error) {
					res.status(200).send(error);
				}

				// Update Requests table
				var sqlQuery3 = mysql.format("update route_requests SET isAccepted = ? where requestId=?", ["1", req.body.requestId]);
				connection.query(sqlQuery3, function (error, result3, fields3) {
					connection.release();

					if (error) {
						res.status(200).send(error);
					}

					// Send request to passenger's device
					var payload = {
						notification: {
							title: "Your Request Accepted",
							body: "Please open notification to view details"
						},
						data: {
							notificationCode: "1",
							requestId: req.body.requestId
						}
					};

					var options = {
						priority: "high",
						timeToLive: 60 * 60 * 24
					};

					admin.messaging().sendToDevice(result[0]["firebaseToken"], payload, options).then(function (response) {
						console.log("Successfully sent push notification");

						res.status(200).send({
							status: true,
							response: response
						});
					}).catch(function (error) {
						console.log("Error sending message:", error);

						res.status(400).send({
							status: false,
							response: error
						});
					});
				});
			});
		});
	})
}

exports.rejectRequest = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Reject repquest by driver")

	pool.getConnection(function (err, connection) {

		// Get passenger Id
		var sqlQuery = mysql.format("select * from route_requests where requestId=?", [req.body.requestId]);
		connection.query(sqlQuery, function (error, results, fields) {
			if (error) {
				res.status(200).send(error);
			}

			// Get Firebase token of passenger
			var sqlQuery2 = mysql.format("select * from users where userId=?", [results[0]["passengerId"]]);
			connection.query(sqlQuery2, function (error, result, fields) {
				if (error) {
					res.status(200).send(error);
				}

				// Update Requests table
				var sqlQuery3 = mysql.format("update route_requests SET isAccepted = ? where requestId=?", ["2", req.body.requestId]);
				connection.query(sqlQuery3, function (error, result3, fields3) {
					connection.release();

					if (error) {
						res.status(200).send(error);
					}

					// Send request to passenger's device
					var payload = {
						notification: {
							title: "Your Request Rejected",
							body: "Please open notification to view details"
						},
						data: {
							notificationCode: "2",
							requestId: req.body.requestId
						}
					};

					var options = {
						priority: "high",
						timeToLive: 60 * 60 * 24
					};

					admin.messaging().sendToDevice(result[0]["firebaseToken"], payload, options).then(function (response) {
						console.log("Successfully sent push notification");

						res.status(200).send({
							status: true,
							response: response
						});
					}).catch(function (error) {
						console.log("Error sending message:", error);

						res.status(400).send({
							status: false,
							response: error
						});
					});
				});
			});
		});
	})
}

exports.getRoute = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Get Route")

	pool.getConnection(function (err, connection) {

		// Get route Id
		var sqlQuery = mysql.format("select * from route_requests where requestId=?", [req.body.requestId]);
		connection.query(sqlQuery, function (error, results, fields) {
			if (error) {
				res.status(200).send(error);
			}

			// Get Route from driver_routes
			var sqlQuery2 = mysql.format("select * from driver_routes where routeId=?", [results[0]["routeId"]]);
			connection.query(sqlQuery2, function (error, result, fields) {
				connection.release();

				if (error) {
					res.status(200).send(error);
				}

				res.status(200).send({
					status: true,
					response: result
				});
			});
		});
	})
}

exports.getRouteFromRouteId = function(req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Get Route from RouteId")

	pool.getConnection(function (err, connection) {

		// Get Route from driver_routes
		var sqlQuery2 = mysql.format("select * from driver_routes where routeId=?", [req.body.routeId]);
		connection.query(sqlQuery2, function (error, result, fields) {
			connection.release();

			if (error) {
				res.status(200).send(error);
			}

			res.status(200).send({
				status: true,
				response: result
			});
		});
	})
}

exports.getPassengersOfRoute = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Get Passengers Of Request")
	
	pool.getConnection(function (err, connection) {
		var sqlQuery2 = mysql.format("select * from route_requests r, users u where r.passengerId = u.userId AND r.isAccepted = ? AND r.routeId = ?", ['1', req.body.routeId]);
		connection.query(sqlQuery2, function (error, result, fields) {
			connection.release();

			if (error) {
				res.status(200).send(error);
			}

			res.status(200).send({
				status: true,
				response: result
			});
		});
	});
}


exports.setPickStatus = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Set pessengger pick status")
	
	pool.getConnection(function (err, connection) {
		var sql = mysql.format("update route_requests SET pickStatus = ? where requestId=?", [req.body.pickStatus, req.body.requestId]);
		connection.query(sql, function (error, result, fields) {
			connection.release();

			if (error) {
				res.status(200).send(error);
			}
			else if (result.affectedRows == 0) {
				res.status(200).send({
					status: false,
					result: result
				});
			} 
			else {
				res.status(200).send({
					status: true,
					result: result
				});
			}
		});
	});
}

exports.updateTotalAmount = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Update total amount of a request")
	
	pool.getConnection(function (err, connection) {
		var sql = mysql.format("update route_requests SET totalAmount = ? where requestId=?", [req.body.totalAmount, req.body.requestId]);
		connection.query(sql, function (error, result, fields) {
			connection.release();

			if (error) {
				res.status(200).send(error);
			} else if (result.affectedRows == 0) {
				res.status(200).send({
					status: false,
					result: result
				});
			} else {
				res.status(200).send({
					status: true,
					result: result
				});
			}
		});
	});
}

exports.getDriverHistory = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Get driver history routes")

	pool.getConnection(function (err, connection) {

		// Get Route from driver_routes
		var sqlQuery = mysql.format("select d.routeId, d.fromLocation, d.toLocation, d.tripDate, d.distance, d.time, SUM(r.totalAmount) as totalAmount, COUNT(*) as noOfPassengers from driver_routes d, route_requests r where d.routeId = r.routeId AND d.userId = ? group by d.routeId order by d.routeId desc", [req.body.driverId]);
		connection.query(sqlQuery, function (error, result, fields) {
			connection.release();

			if (error) {
				res.status(200).send(error);
			}

			res.status(200).send({
				status: true,
				response: result
			});
		});
	})
}

exports.insertFirebase = function (req, res) {
	var db = admin.database();
	var ref = db.ref("route-requests/"+"350");
	ref.set({
		"data": {
			requestId: "1",
			routeId: "1",
			driverId: "1",
			passengerId: "1",
			driverLocation: "213123|31213",
			passengerLocation: "213123|213123"
		}	
	});
}