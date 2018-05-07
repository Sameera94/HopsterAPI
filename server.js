var express = require('express');
var app = express();
var port = process.env.PORT || 8099;
var mongoose = require('mongoose');

var bodyParser = require('body-parser');
var cors = require('cors')


// Bodyparser Configurations
app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

// Allow for cross
app.use(cors());

// Initialize Routes
var routes = require('./api/routes/routes');
routes(app);

// 404 error page
app.use(function (req, res) {
    res.status(404).send({url: req.originalUrl + ' not found'});
});

// Start Server
app.listen(port);
console.log('\n~~~ ~~~ ~~~ ~~~ ~~~ ~~~ ~~~ ~~~ ~~~ ~~~ ~~~')
console.log('~~~ Hopster Server Started on port ' + port + ' ~~~');
console.log('~~~ ~~~ ~~~ ~~~ ~~~ ~~~ ~~~ ~~~ ~~~ ~~~ ~~~\n')