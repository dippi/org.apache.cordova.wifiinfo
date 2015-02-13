#import <Cordova/CDV.h>

@interface CDVWifiInfo : CDVPlugin

- (void) getWifiInfo:(CDVInvokedUrlCommand*)command;

@end