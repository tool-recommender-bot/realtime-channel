//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-channel/src/main/java/com/goodow/realtime/core/PlatformFactory.java
//
//  Created by retechretech.
//

#include "com/goodow/realtime/core/Net.h"
#include "com/goodow/realtime/core/Platform.h"
#include "com/goodow/realtime/core/PlatformFactory.h"
#include "com/goodow/realtime/core/VoidHandler.h"


@interface ComGoodowRealtimeCorePlatformFactory : NSObject
@end

@implementation ComGoodowRealtimeCorePlatformFactory

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "cancelTimerWithInt:", NULL, "Z", 0x401, NULL },
    { "net", NULL, "LComGoodowRealtimeCoreNet", 0x401, NULL },
    { "scheduleDeferredWithComGoodowRealtimeCoreVoidHandler:", NULL, "V", 0x401, NULL },
    { "setPeriodicWithInt:withComGoodowRealtimeCoreVoidHandler:", NULL, "I", 0x401, NULL },
    { "type", NULL, "LComGoodowRealtimeCorePlatform_TypeEnum", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeCorePlatformFactory = { "PlatformFactory", "com.goodow.realtime.core", NULL, 0x201, 5, methods, 0, NULL, 0, NULL};
  return &_ComGoodowRealtimeCorePlatformFactory;
}

@end
