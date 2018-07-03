'use strict';
var mysql = require('mysql');

var pool = mysql.createPool({
	host: 'localhost',
	socketPath: '/Applications/MAMP/tmp/mysql/mysql.sock',
	user: 'root',
	password: 'root',
	database: 'spds_db'
});

exports.getPaymentValues = function (req, res) {
	console.log(new Date(Date.now()).toLocaleString() + " - New Request -> Get All Payment Values")

	pool.getConnection(function (err, connection) {

		var sql = mysql.format("select * from constants");

		connection.query(sql, function (error, results, fields) {
			connection.release();
			if (error) {
				res.status(200).send(error);
			}

			res.status(200).send(results);
		});
	});
}