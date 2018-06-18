'use strict';

module.exports = function(app) {
	
	// Controllers
	var userController = require('../controllers/userController');
	var driverController = require('../controllers/routeController');
	var requestController = require('../controllers/requestController');
	var passengerTripController = require('../controllers/passengerTripController');
	var paymentController = require('../controllers/paymentController')

	app.route('/health').get(userController.health)

	// User routes
   app.route('/login').post(userController.validateUserLogin);        
	app.route('/createNewUser').post(userController.createNewUser);
	app.route('/isEmailExist').post(userController.isEmailExist);
	app.route('/resetPassword').post(userController.resetPassword);

	// Driver routes
	app.route('/insertNewDriverRoute').post(driverController.insertNewDriverRoute);
	app.route('/getAllRoutes').post(driverController.getAllRoutes);
	app.route('/deleteRoute').post(driverController.deleteRoute);
	app.route('/getAllEnabledDriverRoutes').post(driverController.getAllEnabledDriverRoutes);

	// Request Routes
	app.route('/updateFirebaseTocken').post(requestController.updateFirebaseTocken);
	app.route('/sendRequestToDriver').post(requestController.sendRequestToDriver);
	app.route('/acceptRequest').post(requestController.acceptRequest);
	app.route('/rejectRequest').post(requestController.rejectRequest);
	app.route('/getRoute').post(requestController.getRoute);
	app.route('/getRouteFromRouteId').post(requestController.getRouteFromRouteId)
	app.route('/getPassengersOfRoute').post(requestController.getPassengersOfRoute)
	app.route('/setPickStatus').post(requestController.setPickStatus)
	app.route('/updateTotalAmount').post(requestController.updateTotalAmount)
	app.route('/getDriverHistory').post(requestController.getDriverHistory)

	// Passenger Trips Routes
	app.route('/savePassengerTrip').post(passengerTripController.savePassengerTrip);
	app.route('/getAllPassengerTrips').post(passengerTripController.getAllPassengerTrips);
	app.route('/deletePassengerTrip').post(passengerTripController.deletePassengerTrip);
	app.route('/getPaymentValues').post(paymentController.getPaymentValues);
	app.route('/insertFirebase').post(requestController.insertFirebase);

	// UI
	app.get('/admin', function (req, res) {
		res.sendfile('app/index.html');
	});
};