'use strict';
var mysql = require('mysql');

var pool = mysql.createPool({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'spds_db'
});

exports.validateUserLogin = function (req, res) {
	console.log("New Request -> User login\n")
	pool.getConnection(function (err, connection) {

		var sql = mysql.format("select * from users where email=? && password=?", [req.body.email, req.body.password]);

		connection.query(sql, function (error, results, fields) {
			connection.release();
			if (error) {
				res.status(200).send(error);
			}

			if (results.length > 0) {
				res.status(200).send({
					status: true,
					user: results
				});
			} else {
				res.status(200).send({
					status: false
				});
			}
		});
	});
}

exports.createNewUser = function (req, res) {
	console.log("New Request -> Create User\n")

	pool.getConnection(function (err, connection) {

		var values = {
			firstName: req.body.firstName,
			lastName: req.body.lastName,
			email: req.body.email,
			contactNumber: req.body.contactNumber,
			nicNumber: req.body.nicNumber,
			gender: req.body.gender,
			password: req.body.password
		};

		connection.query('INSERT INTO users SET ?', values, function (error, results, fields) {
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

exports.isEmailExist = function (req, res) {
	console.log("New Request -> Email validation\n")

	pool.getConnection(function (err, connection) {

		var sql = mysql.format("select * from users where email=?", [req.body.email]);

		connection.query(sql, function (error, results, fields) {
			connection.release();
			if (error) {
				res.status(200).send(error);
			}

			if (results.length > 0) {
				res.status(200).send({
					status: true,
					user: results
				});
			} else {
				res.status(200).send({
					status: false
				});
			}
		});
	});
}

exports.resetPassword = function (req, res) {
	console.log("New Request -> Reset Password\n")

	pool.getConnection(function (err, connection) {
		var sql = mysql.format("update users SET password = ? where email=?", [req.body.password, req.body.email]);

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