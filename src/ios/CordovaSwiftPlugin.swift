/*
Notes: Use the @objc identifier to show that this class/function should be exposed to Objective-c (Cordova).

*/

@objc(TestPluginSwift) class TestPluginSwift : CDVPlugin { // Declare the namespace you want to expose to cordova, when you call the Plugin 
  @objc(testing:) // Declare the function that you want to expose to cordova, when you call the function (plugin.functionName)
  func test(command: CDVInvokedUrlCommand) { // write the function. 
  // Assume that the plugin is going to fail (even if in this example, it can't).
    var pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR);

    pluginResult = CDVPluginResult(status: CDVCommandStatus_OK); // Set the plugin result to send back to the client.js file.

    print("The TestPluginSwift test function ran correctly!"); // Just for giggles.
    self.commandDelegate!.send(pluginResult, callbackId: command.callbackId); // Send the function result back to cordova.
  }
}