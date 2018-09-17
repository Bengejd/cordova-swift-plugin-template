var exec = require('cordova/exec');


// This is where we declare our functions for consumption in the view.
exports.test = function(arg0, success, error) {
	exec(success, error, 'ModusEchoSwift', 'test', [arg0]);
};

exports.testing = function(arg0, success, error){
	exec(success,error, 'TestPluginSwift', 'testing', [arg0]);
};