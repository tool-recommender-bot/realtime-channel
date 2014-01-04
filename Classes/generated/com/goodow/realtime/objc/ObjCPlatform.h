//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-channel/src/main/java/com/goodow/realtime/objc/ObjCPlatform.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeObjcObjCPlatform_H_
#define _ComGoodowRealtimeObjcObjCPlatform_H_

@class ComGoodowRealtimeCorePlatform_TypeEnum;
@class ComGoodowRealtimeCoreVoidHandler;
@class JavaUtilConcurrentAtomicAtomicInteger;
@protocol ComGoodowRealtimeCoreNet;
@protocol GDJsonObject;

#import "JreEmulation.h"
#include "com/goodow/realtime/core/PlatformFactory.h"

@interface ComGoodowRealtimeObjcObjCPlatform : NSObject < ComGoodowRealtimeCorePlatformFactory > {
 @public
  JavaUtilConcurrentAtomicAtomicInteger *timerId_;
  id<GDJsonObject> timers_;
  id<ComGoodowRealtimeCoreNet> net__;
}

+ (void)register__;
- (BOOL)cancelTimerWithInt:(int)id_;
- (id<ComGoodowRealtimeCoreNet>)net;
- (void)scheduleDeferredWithComGoodowRealtimeCoreVoidHandler:(ComGoodowRealtimeCoreVoidHandler *)handler;
- (int)setPeriodicWithInt:(int)delayMs
withComGoodowRealtimeCoreVoidHandler:(ComGoodowRealtimeCoreVoidHandler *)handler;
- (ComGoodowRealtimeCorePlatform_TypeEnum *)type;
- (void)cancelTimerWithId:(id)timer;
- (id)setPeriodicNativeWithInt:(int)delayMs
withComGoodowRealtimeCoreVoidHandler:(ComGoodowRealtimeCoreVoidHandler *)handler;
- (id)init;
- (void)copyAllFieldsTo:(ComGoodowRealtimeObjcObjCPlatform *)other;
@end

J2OBJC_FIELD_SETTER(ComGoodowRealtimeObjcObjCPlatform, timerId_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeObjcObjCPlatform, timers_, id<GDJsonObject>)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeObjcObjCPlatform, net__, id<ComGoodowRealtimeCoreNet>)

#endif // _ComGoodowRealtimeObjcObjCPlatform_H_
