#import "WxgzsdktestPlugin.h"
#import <WXGZ_SDK/WXGZ_SDK.h>

#define iDataAppkey @"64c50764d5687e5c0d72ac01"
#define iDataBuryingUrl @"http://server.infobeats.cn:8888"
#define iDataWebSocket @"ws://server.infobeats.cn:8888/wxgz-buriedsocket"

#define mtssAppkey @"64c50764d5687e5c0d72ac01"
#define mtssacceptid  @"e68e6fe423a7947f"
#define mtssbaseurl  @"http://server.infobeats.cn:8888"
#define mtssreporturl  @"http://reportapi.infobeats.cn:6060"
#define mtsspushurl @"http://server.infobeats.cn:8888"

@implementation WxgzsdktestPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"wxgzsdktest"
            binaryMessenger:[registrar messenger]];
  WxgzsdktestPlugin* instance = [[WxgzsdktestPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
//      [IDataVisibleBurialPointSDK startWithAppkey:iDataAppkey buryingURL:iDataBuryingUrl webSocket:iDataWebSocket];
      [MTSS startWithBuryingURL:mtssbaseurl reportedURL:mtssreporturl pushURL:mtsspushurl acceptId:mtssacceptid appKey:mtssAppkey];
      result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
