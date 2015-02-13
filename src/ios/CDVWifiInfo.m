#import "CDVWifiInfo.h"

@implementation CDVWifiInfo

- (void)getWifiInfo:(CDVInvokedUrlCommand*)command
{
  
  CFArrayRef myArray = CNCopySupportedInterfaces();
  CFDictionaryRef myDict = CNCopyCurrentNetworkInfo(CFArrayGetValueAtIndex(myArray, 0));
  NSDictionary *ssidList = (__bridge NSDictionary*)myDict;
  NSString *SSID = [ssidList valueForKey:@"SSID"];
  
  NSDictionary *jsonConnection = [ [NSDictionary alloc]
                           initWithObjectsAndKeys :
                           SSID, @"SSID",
                            nil];
  
  NSDictionary *jsonObj = [ [NSDictionary alloc]
                           initWithObjectsAndKeys :
                           jsonConnection, @"connection",
                           nil];
  
  CDVPluginResult *pluginResult = [ CDVPluginResult
                                   resultWithStatus    : CDVCommandStatus_OK
                                   messageAsDictionary : jsonObj ];
  
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

@end