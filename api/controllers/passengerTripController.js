'use strict';
var mysql = require('mysql');

var pool = mysql.createPool({
	host: 'localhost',
	socketPath: '/Applications/MAMP/tmp/mysql/mysql.sock',
	user: 'root',
	password: 'root',
	database: 'spds_db'
});

exports.savePassengerTrip = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Save PassengerTrip")

	pool.getConnection(function (err, connection) {

		var values = {
			fromLocation: req.body.fromLocation,
			fromLatitude: req.body.fromLatitude,
			fromLongitude: req.body.fromLongitude,
			toLocation: req.body.toLocation,
			toLatitude: req.body.toLatitude,
			toLongitude: req.body.toLongitude,
			time: req.body.time,
			tripDate: req.body.tripDate,
			passengerId: req.body.passengerId,
			polylinePoints: req.body.polylinePoints
		};

		connection.query('INSERT INTO passenger_trips SET ?', values, function (error, results, fields) {
			connection.release();

			if (error) {
				res.status(400).send({
					status: false,
					result: error
				});
			}

			res.status(200).send({
				status: true,
				result: results
			});
		});
	});
}

exports.getAllPassengerTrips = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Get All Passenger Trips")

	pool.getConnection(function (err, connection) {

		var sql = mysql.format("select * from passenger_trips where passengerId=?", [req.body.passengerId]);

		connection.query(sql, function (error, results, fields) {
			connection.release();
			if (error) {
				res.status(200).send(error);
			}

			res.status(200).send(results);
		});
	});
}

exports.deletePassengerTrip = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Delete PassengerTrip")
	
	pool.getConnection(function (err, connection) {
		var sql = mysql.format("DELETE FROM passenger_trips where id=?", [req.body.passengerTripsId]);

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