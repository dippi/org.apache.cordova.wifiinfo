#import <Cordova/CDV.h>

#include <ifaddrs.h>
#include <arpa/inet.h>

@interface CDVWifiInfo : CDVPlugin

- (void) getWifiInfo:(CDVInvokedUrlCommand*)command;

@end