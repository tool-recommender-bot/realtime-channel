//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-channel/src/main/java/com/goodow/realtime/core/HandlerRegistrations.java
//
//  Created by retechretech.
//

#include "com/goodow/realtime/core/HandlerRegistration.h"
#include "com/goodow/realtime/core/HandlerRegistrations.h"
#include "com/goodow/realtime/json/Json.h"
#include "com/goodow/realtime/json/JsonArray.h"

@implementation ComGoodowRealtimeCoreHandlerRegistrations

- (void)addWithComGoodowRealtimeCoreHandlerRegistration:(id<ComGoodowRealtimeCoreHandlerRegistration>)registration {
  NSAssert(registration != nil, @"registration shouldn't be null");
  if (registrations_ == nil) {
    registrations_ = [GDJson createArray];
  }
  (void) [((id<GDJsonArray>) nil_chk(registrations_)) push:registration];
}

- (void)unregisterHandler {
  if (registrations_ != nil) {
    [registrations_ forEach:[[ComGoodowRealtimeCoreHandlerRegistrations_$1 alloc] init]];
    (void) [registrations_ clear];
    registrations_ = nil;
  }
}

- (id<ComGoodowRealtimeCoreHandlerRegistration>)wrapWithComGoodowRealtimeCoreHandlerRegistration:(id<ComGoodowRealtimeCoreHandlerRegistration>)registration {
  [self addWithComGoodowRealtimeCoreHandlerRegistration:registration];
  return [[ComGoodowRealtimeCoreHandlerRegistrations_$2 alloc] initWithComGoodowRealtimeCoreHandlerRegistrations:self withComGoodowRealtimeCoreHandlerRegistration:registration];
}

- (id)init {
  return [super init];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeCoreHandlerRegistrations *)other {
  [super copyAllFieldsTo:other];
  other->registrations_ = registrations_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "addWithComGoodowRealtimeCoreHandlerRegistration:", "add", "V", 0x1, NULL },
    { "unregisterHandler", NULL, "V", 0x1, NULL },
    { "wrapWithComGoodowRealtimeCoreHandlerRegistration:", "wrap", "Lcom.goodow.realtime.core.HandlerRegistration;", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "registrations_", NULL, 0x2, "Lcom.goodow.realtime.json.JsonArray;" },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeCoreHandlerRegistrations = { "HandlerRegistrations", "com.goodow.realtime.core", NULL, 0x1, 4, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeCoreHandlerRegistrations;
}

@end
@implementation ComGoodowRealtimeCoreHandlerRegistrations_$1

- (void)callWithInt:(int)index
             withId:(id<ComGoodowRealtimeCoreHandlerRegistration>)value {
  [((id<ComGoodowRealtimeCoreHandlerRegistration>) nil_chk(value)) unregisterHandler];
}

- (id)init {
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "callWithInt:withComGoodowRealtimeCoreHandlerRegistration:", "call", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeCoreHandlerRegistrations_$1 = { "$1", "com.goodow.realtime.core", "HandlerRegistrations", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_ComGoodowRealtimeCoreHandlerRegistrations_$1;
}

@end
@implementation ComGoodowRealtimeCoreHandlerRegistrations_$2

- (void)unregisterHandler {
  int idx = [((id<GDJsonArray>) nil_chk(this$0_->registrations_)) indexOf:val$registration_];
  if (idx != -1) {
    (void) [this$0_->registrations_ remove:idx];
  }
  [((id<ComGoodowRealtimeCoreHandlerRegistration>) nil_chk(val$registration_)) unregisterHandler];
}

- (id)initWithComGoodowRealtimeCoreHandlerRegistrations:(ComGoodowRealtimeCoreHandlerRegistrations *)outer$
           withComGoodowRealtimeCoreHandlerRegistration:(id<ComGoodowRealtimeCoreHandlerRegistration>)capture$0 {
  this$0_ = outer$;
  val$registration_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "unregisterHandler", NULL, "V", 0x1, NULL },
    { "initWithComGoodowRealtimeCoreHandlerRegistrations:withComGoodowRealtimeCoreHandlerRegistration:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.core.HandlerRegistrations;" },
    { "val$registration_", NULL, 0x1012, "Lcom.goodow.realtime.core.HandlerRegistration;" },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeCoreHandlerRegistrations_$2 = { "$2", "com.goodow.realtime.core", "HandlerRegistrations", 0x8000, 2, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeCoreHandlerRegistrations_$2;
}

@end
