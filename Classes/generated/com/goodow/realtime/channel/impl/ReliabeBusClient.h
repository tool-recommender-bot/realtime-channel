//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-channel/src/main/java/com/goodow/realtime/channel/impl/ReliabeBusClient.java
//
//  Created by retechretech.
//

#ifndef _GDCReliabeBusClient_H_
#define _GDCReliabeBusClient_H_

@class GDCSimpleBus;
@class GDCStateEnum;
@class JavaUtilLoggingLogger;
@protocol ComGoodowRealtimeCoreHandler;
@protocol ComGoodowRealtimeCoreHandlerRegistration;
@protocol GDCMessage;
@protocol GDJsonObject;

#import "JreEmulation.h"
#include "com/goodow/realtime/channel/Bus.h"
#include "com/goodow/realtime/channel/BusHook.h"

@interface GDCReliabeBusClient : NSObject < GDCBus > {
 @public
  id<GDJsonObject> pendings_;
  id<GDJsonObject> currentRevisions_;
  id<GDJsonObject> knownHeadRevisions_;
  GDCSimpleBus *wrapped_;
  id<GDCBusHook> hook_;
}

+ (JavaUtilLoggingLogger *)log;
- (id)initWithGDCSimpleBus:(GDCSimpleBus *)wrapped;
- (void)close;
- (GDCStateEnum *)getReadyState;
- (id<GDCBus>)publishWithNSString:(NSString *)address
                           withId:(id)msg;
- (id<ComGoodowRealtimeCoreHandlerRegistration>)registerHandlerWithNSString:(NSString *)address
                                           withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler;
- (id<GDCBus>)sendWithNSString:(NSString *)address
                        withId:(id)msg
withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)replyHandler;
- (GDCReliabeBusClient *)setHookWithGDCBusHook:(id<GDCBusHook>)hook;
- (BOOL)onMessageWithGDCMessage:(id<GDCMessage>)message;
- (void)scheduleCatchupWithNSString:(NSString *)address
                         withDouble:(double)d;
- (void)copyAllFieldsTo:(GDCReliabeBusClient *)other;
@end

J2OBJC_FIELD_SETTER(GDCReliabeBusClient, pendings_, id<GDJsonObject>)
J2OBJC_FIELD_SETTER(GDCReliabeBusClient, currentRevisions_, id<GDJsonObject>)
J2OBJC_FIELD_SETTER(GDCReliabeBusClient, knownHeadRevisions_, id<GDJsonObject>)
J2OBJC_FIELD_SETTER(GDCReliabeBusClient, wrapped_, GDCSimpleBus *)
J2OBJC_FIELD_SETTER(GDCReliabeBusClient, hook_, id<GDCBusHook>)

typedef GDCReliabeBusClient ComGoodowRealtimeChannelImplReliabeBusClient;

@interface GDCReliabeBusClient_$1 : NSObject < GDCBusHook > {
 @public
  GDCReliabeBusClient *this$0_;
}

- (BOOL)handlePreRegisterWithNSString:(NSString *)address
     withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler;
- (BOOL)handleReceiveMessageWithGDCMessage:(id<GDCMessage>)message;
- (BOOL)handleSendOrPubWithBoolean:(BOOL)send
                      withNSString:(NSString *)address
                            withId:(id)msg
  withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)replyHandler;
- (BOOL)handleUnregisterWithNSString:(NSString *)address;
- (id)initWithGDCReliabeBusClient:(GDCReliabeBusClient *)outer$;
@end

J2OBJC_FIELD_SETTER(GDCReliabeBusClient_$1, this$0_, GDCReliabeBusClient *)

#endif // _GDCReliabeBusClient_H_