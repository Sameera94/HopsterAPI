'use strict';
var mysql = require('mysql');
var admin = require("firebase-admin");

var serviceAccount = require("../configs/prepgamification-firebase-adminsdk-apdlr-0519f1626a.json");

admin.initializeApp({
	credential: admin.credential.cert(serviceAccount),
	databaseURL: "https://prepgamification.firebaseio.com"
});

var pool = mysql.createPool({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'spds_db'
});

exports.updateFirebaseTocken = function (req, res) {
	console.log("New Request -> Save device tocken")

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
	console.log("New Request -> Send Request to driver")

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
			isAccepted: 0
		};

		connection.query('INSERT INTO route_requests SET ?', values, function (error, requestResults, fields) {
			if (error) {
				res.status(400).send({
					status: false,
					result: error
				});
			}

			// Send push notification to driver
			var sql = mysql.format("select * from users where userId=?", [driverId]);
			
			connection.query(sql, function (error, results, fields) {
				connection.release();
				if (error) {
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
	
				admin.messaging().sendToDevice(driverFirebaseToken, payload, options).then(function (response) {
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
}

exports.acceptRequest = function (req, res) {
	console.log("New Request -> Accept repquest by driver")

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
	console.log("New Request -> Reject repquest by driver")

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