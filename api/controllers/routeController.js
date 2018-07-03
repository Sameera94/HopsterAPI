'use strict';
var mysql = require('mysql');

var pool = mysql.createPool({
	host: 'localhost',
	socketPath: '/Applications/MAMP/tmp/mysql/mysql.sock',
	user: 'root',
	password: 'root',
	database: 'spds_db'
});

exports.insertNewDriverRoute = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Insert new driver route")

	pool.getConnection(function (err, connection) {

		var values = {
			fromLocation: req.body.fromLocation,
			fromLatitude: req.body.fromLatitude,
			fromLongitude: req.body.fromLongitude,
			toLocation: req.body.toLocation,
			toLatitude: req.body.toLatitude,
			toLongitude: req.body.toLongitude,
			frequency: req.body.frequency,
			time: req.body.time,
			distance: req.body.distance,
			isEnabled: req.body.isEnabled,
			userId: req.body.userId,
			polylinePoints: req.body.polylinePoints,
			tripDate: req.body.tripDate
		};

		connection.query('INSERT INTO driver_routes SET ?', values, function (error, results, fields) {
			connection.release();

			if (error) {
				res.status(400).send({
					status: false,
					result: error
				});
			}

			res.status(200).send({
				status: true,
				insertId: results.insertId
			});

			// try {
			// 	var waypoints = JSON.parse(req.body.waypoints)
			// 	if (waypoints.length > 0) {

			// 		for (let waypoint of waypoints) {

			// 			pool.getConnection(function (err, connection) {
			// 				var values = {
			// 					routeId: results.insertId,
			// 					location: waypoint.location,
			// 					latitude: waypoint.latitude,
			// 					longitude: waypoint.longitude,
			// 					waypointPosition: waypoint.waypointPosition
			// 				};

			// 				connection.query('INSERT INTO driver_waypoints SET ?', values, function (error, result, fields) {
			// 					connection.release();
			// 				});
			// 			})
			// 		}

			// 		res.status(200).send({
			// 			status: true,
			// 			result: results
			// 		});

			// 	} else {
			// 		res.status(200).send({
			// 			status: true,
			// 			result: results
			// 		});
			// 	}
			// } catch (error) {
			// 	console.log("error")
			// }
		});
	});
}

exports.getAllRoutes = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Get All driver routes")

	pool.getConnection(function (err, connection) {

		var sql = mysql.format("select * from driver_routes where userId=?", [req.body.userId]);

		connection.query(sql, function (error, results, fields) {
			connection.release();
			if (error) {
				res.status(200).send(error);
			}

			res.status(200).send(results);
		});
	});
}

exports.deleteRoute = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Delete route")
	console.log(req.body.tripId)

	pool.getConnection(function (err, connection) {

		var sql = mysql.format("DELETE FROM driver_routes where id=?", [req.body.tripId]);

		connection.query(sql, function (error, results, fields) {
			connection.release();
			if (error) {
				console.log(error)
				res.status(200).send(error);
			}

			res.status(200).send({
				status: true,
				user: results
			});
		});
	});
}

// Search Results
exports.getAllEnabledDriverRoutes = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Get all enabled driver routes")

	pool.getConnection(function (err, connection) {

		var sql = mysql.format("select * from driver_routes r, users u where r.userId = u.userId AND isEnabled=?", ["true"]);

		connection.query(sql, function (error, results, fields) {
			connection.release();
			if (error) {
				res.status(200).send(error);
			}

			res.status(200).send(results);
		});
	});
}