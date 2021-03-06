// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: goodow_extras_option.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/FieldMask.pbobjc.h>
#else
 #import "FieldMask.pbobjc.h"
#endif

 #import "GoodowExtrasOption.pbobjc.h"
 #import "GoodowBool.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GDDPBGoodowExtrasOptionRoot

@implementation GDDPBGoodowExtrasOptionRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[GPBFieldMaskRoot extensionRegistry]];
    [registry addExtensions:[GDPBGoodowBoolRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - GDDPBGoodowExtrasOptionRoot_FileDescriptor

static GPBFileDescriptor *GDDPBGoodowExtrasOptionRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@""
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum GDDPBLaunchMode

GPBEnumDescriptor *GDDPBLaunchMode_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Standard\000SingleInstance\000None\000";
    static const int32_t values[] = {
        GDDPBLaunchMode_Standard,
        GDDPBLaunchMode_SingleInstance,
        GDDPBLaunchMode_None,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(GDDPBLaunchMode)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:GDDPBLaunchMode_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL GDDPBLaunchMode_IsValidValue(int32_t value__) {
  switch (value__) {
    case GDDPBLaunchMode_Standard:
    case GDDPBLaunchMode_SingleInstance:
    case GDDPBLaunchMode_None:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum GDDPBStackMode

GPBEnumDescriptor *GDDPBStackMode_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Push\000PresentPush\000Present\000ReplaceRoot\000";
    static const int32_t values[] = {
        GDDPBStackMode_Push,
        GDDPBStackMode_PresentPush,
        GDDPBStackMode_Present,
        GDDPBStackMode_ReplaceRoot,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(GDDPBStackMode)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:GDDPBStackMode_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL GDDPBStackMode_IsValidValue(int32_t value__) {
  switch (value__) {
    case GDDPBStackMode_Push:
    case GDDPBStackMode_PresentPush:
    case GDDPBStackMode_Present:
    case GDDPBStackMode_ReplaceRoot:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - GDDPBExtrasOption

@implementation GDDPBExtrasOption

@dynamic hasViewOpt, viewOpt;
@dynamic hasCaching, caching;
@dynamic hasRequestOpt, requestOpt;

typedef struct GDDPBExtrasOption__storage_ {
  uint32_t _has_storage_[1];
  GDDPBViewOption *viewOpt;
  GDDPBCacheControl *caching;
  GDDPBExtrasOption_RequestOption *requestOpt;
} GDDPBExtrasOption__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "viewOpt",
        .dataTypeSpecific.className = GPBStringifySymbol(GDDPBViewOption),
        .number = GDDPBExtrasOption_FieldNumber_ViewOpt,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDDPBExtrasOption__storage_, viewOpt),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "caching",
        .dataTypeSpecific.className = GPBStringifySymbol(GDDPBCacheControl),
        .number = GDDPBExtrasOption_FieldNumber_Caching,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDDPBExtrasOption__storage_, caching),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "requestOpt",
        .dataTypeSpecific.className = GPBStringifySymbol(GDDPBExtrasOption_RequestOption),
        .number = GDDPBExtrasOption_FieldNumber_RequestOpt,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDDPBExtrasOption__storage_, requestOpt),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDDPBExtrasOption class]
                                     rootClass:[GDDPBGoodowExtrasOptionRoot class]
                                          file:GDDPBGoodowExtrasOptionRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDDPBExtrasOption__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDDPBExtrasOption_RequestOption

@implementation GDDPBExtrasOption_RequestOption

@dynamic retryTimes;

typedef struct GDDPBExtrasOption_RequestOption__storage_ {
  uint32_t _has_storage_[1];
  uint32_t retryTimes;
} GDDPBExtrasOption_RequestOption__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "retryTimes",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBExtrasOption_RequestOption_FieldNumber_RetryTimes,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDDPBExtrasOption_RequestOption__storage_, retryTimes),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDDPBExtrasOption_RequestOption class]
                                     rootClass:[GDDPBGoodowExtrasOptionRoot class]
                                          file:GDDPBGoodowExtrasOptionRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDDPBExtrasOption_RequestOption__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDDPBViewOption

@implementation GDDPBViewOption

@dynamic launchMode;
@dynamic stackMode;
@dynamic statusBar;
@dynamic navBar;
@dynamic statusBarStyle;
@dynamic navBarStyle;
@dynamic hidesBottomBarWhenPushed;
@dynamic tabBar;
@dynamic supportedInterfaceOrientations;
@dynamic autorotate;
@dynamic needsRefresh;
@dynamic attemptRotationToDeviceOrientation;
@dynamic deviceOrientation;
@dynamic toolBar;
@dynamic preferredInterfaceOrientationForPresentation;
@dynamic modalPresentationStyle;
@dynamic modalTransitionStyle;
@dynamic edgesForExtendedLayout;

typedef struct GDDPBViewOption__storage_ {
  uint32_t _has_storage_[1];
  GDDPBLaunchMode launchMode;
  GDDPBStackMode stackMode;
  GDPBBool statusBar;
  GDPBBool navBar;
  uint32_t statusBarStyle;
  uint32_t navBarStyle;
  GDPBBool tabBar;
  uint32_t supportedInterfaceOrientations;
  GDPBBool autorotate;
  uint32_t deviceOrientation;
  GDPBBool toolBar;
  uint32_t preferredInterfaceOrientationForPresentation;
  uint32_t modalPresentationStyle;
  uint32_t modalTransitionStyle;
  uint32_t edgesForExtendedLayout;
} GDDPBViewOption__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "launchMode",
        .dataTypeSpecific.enumDescFunc = GDDPBLaunchMode_EnumDescriptor,
        .number = GDDPBViewOption_FieldNumber_LaunchMode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, launchMode),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "stackMode",
        .dataTypeSpecific.enumDescFunc = GDDPBStackMode_EnumDescriptor,
        .number = GDDPBViewOption_FieldNumber_StackMode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, stackMode),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "statusBar",
        .dataTypeSpecific.enumDescFunc = GDPBBool_EnumDescriptor,
        .number = GDDPBViewOption_FieldNumber_StatusBar,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, statusBar),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "navBar",
        .dataTypeSpecific.enumDescFunc = GDPBBool_EnumDescriptor,
        .number = GDDPBViewOption_FieldNumber_NavBar,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, navBar),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "statusBarStyle",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBViewOption_FieldNumber_StatusBarStyle,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, statusBarStyle),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "navBarStyle",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBViewOption_FieldNumber_NavBarStyle,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, navBarStyle),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "hidesBottomBarWhenPushed",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBViewOption_FieldNumber_HidesBottomBarWhenPushed,
        .hasIndex = 6,
        .offset = 7,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "tabBar",
        .dataTypeSpecific.enumDescFunc = GDPBBool_EnumDescriptor,
        .number = GDDPBViewOption_FieldNumber_TabBar,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, tabBar),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "supportedInterfaceOrientations",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBViewOption_FieldNumber_SupportedInterfaceOrientations,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, supportedInterfaceOrientations),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "autorotate",
        .dataTypeSpecific.enumDescFunc = GDPBBool_EnumDescriptor,
        .number = GDDPBViewOption_FieldNumber_Autorotate,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, autorotate),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "needsRefresh",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBViewOption_FieldNumber_NeedsRefresh,
        .hasIndex = 11,
        .offset = 12,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "attemptRotationToDeviceOrientation",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBViewOption_FieldNumber_AttemptRotationToDeviceOrientation,
        .hasIndex = 13,
        .offset = 14,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "deviceOrientation",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBViewOption_FieldNumber_DeviceOrientation,
        .hasIndex = 15,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, deviceOrientation),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "toolBar",
        .dataTypeSpecific.enumDescFunc = GDPBBool_EnumDescriptor,
        .number = GDDPBViewOption_FieldNumber_ToolBar,
        .hasIndex = 16,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, toolBar),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "preferredInterfaceOrientationForPresentation",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBViewOption_FieldNumber_PreferredInterfaceOrientationForPresentation,
        .hasIndex = 17,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, preferredInterfaceOrientationForPresentation),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "modalPresentationStyle",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBViewOption_FieldNumber_ModalPresentationStyle,
        .hasIndex = 18,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, modalPresentationStyle),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "modalTransitionStyle",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBViewOption_FieldNumber_ModalTransitionStyle,
        .hasIndex = 19,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, modalTransitionStyle),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "edgesForExtendedLayout",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBViewOption_FieldNumber_EdgesForExtendedLayout,
        .hasIndex = 20,
        .offset = (uint32_t)offsetof(GDDPBViewOption__storage_, edgesForExtendedLayout),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDDPBViewOption class]
                                     rootClass:[GDDPBGoodowExtrasOptionRoot class]
                                          file:GDDPBGoodowExtrasOptionRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDDPBViewOption__storage_)
                                         flags:0];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\025\014\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GDDPBViewOption_LaunchMode_RawValue(GDDPBViewOption *message) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_LaunchMode];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDDPBViewOption_LaunchMode_RawValue(GDDPBViewOption *message, int32_t value) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_LaunchMode];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t GDDPBViewOption_StackMode_RawValue(GDDPBViewOption *message) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_StackMode];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDDPBViewOption_StackMode_RawValue(GDDPBViewOption *message, int32_t value) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_StackMode];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t GDDPBViewOption_StatusBar_RawValue(GDDPBViewOption *message) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_StatusBar];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDDPBViewOption_StatusBar_RawValue(GDDPBViewOption *message, int32_t value) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_StatusBar];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t GDDPBViewOption_NavBar_RawValue(GDDPBViewOption *message) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_NavBar];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDDPBViewOption_NavBar_RawValue(GDDPBViewOption *message, int32_t value) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_NavBar];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t GDDPBViewOption_TabBar_RawValue(GDDPBViewOption *message) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_TabBar];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDDPBViewOption_TabBar_RawValue(GDDPBViewOption *message, int32_t value) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_TabBar];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t GDDPBViewOption_Autorotate_RawValue(GDDPBViewOption *message) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_Autorotate];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDDPBViewOption_Autorotate_RawValue(GDDPBViewOption *message, int32_t value) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_Autorotate];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t GDDPBViewOption_ToolBar_RawValue(GDDPBViewOption *message) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_ToolBar];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDDPBViewOption_ToolBar_RawValue(GDDPBViewOption *message, int32_t value) {
  GPBDescriptor *descriptor = [GDDPBViewOption descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBViewOption_FieldNumber_ToolBar];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - GDDPBCacheControl

@implementation GDDPBCacheControl

@dynamic status;
@dynamic maxAge;
@dynamic etag;
@dynamic lastModified;
@dynamic hasKeyFields, keyFields;
@dynamic requestPolicy;

typedef struct GDDPBCacheControl__storage_ {
  uint32_t _has_storage_[1];
  GDDPBCacheControl_Status status;
  GDDPBCacheControl_RequestCachePolicy requestPolicy;
  NSString *etag;
  GPBFieldMask *keyFields;
  double maxAge;
  uint64_t lastModified;
} GDDPBCacheControl__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "status",
        .dataTypeSpecific.enumDescFunc = GDDPBCacheControl_Status_EnumDescriptor,
        .number = GDDPBCacheControl_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDDPBCacheControl__storage_, status),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "maxAge",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBCacheControl_FieldNumber_MaxAge,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDDPBCacheControl__storage_, maxAge),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "etag",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBCacheControl_FieldNumber_Etag,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDDPBCacheControl__storage_, etag),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "lastModified",
        .dataTypeSpecific.className = NULL,
        .number = GDDPBCacheControl_FieldNumber_LastModified,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDDPBCacheControl__storage_, lastModified),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "keyFields",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBFieldMask),
        .number = GDDPBCacheControl_FieldNumber_KeyFields,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDDPBCacheControl__storage_, keyFields),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "requestPolicy",
        .dataTypeSpecific.enumDescFunc = GDDPBCacheControl_RequestCachePolicy_EnumDescriptor,
        .number = GDDPBCacheControl_FieldNumber_RequestPolicy,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDDPBCacheControl__storage_, requestPolicy),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDDPBCacheControl class]
                                     rootClass:[GDDPBGoodowExtrasOptionRoot class]
                                          file:GDDPBGoodowExtrasOptionRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDDPBCacheControl__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GDDPBCacheControl_Status_RawValue(GDDPBCacheControl *message) {
  GPBDescriptor *descriptor = [GDDPBCacheControl descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBCacheControl_FieldNumber_Status];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDDPBCacheControl_Status_RawValue(GDDPBCacheControl *message, int32_t value) {
  GPBDescriptor *descriptor = [GDDPBCacheControl descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBCacheControl_FieldNumber_Status];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t GDDPBCacheControl_RequestPolicy_RawValue(GDDPBCacheControl *message) {
  GPBDescriptor *descriptor = [GDDPBCacheControl descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBCacheControl_FieldNumber_RequestPolicy];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDDPBCacheControl_RequestPolicy_RawValue(GDDPBCacheControl *message, int32_t value) {
  GPBDescriptor *descriptor = [GDDPBCacheControl descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDDPBCacheControl_FieldNumber_RequestPolicy];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum GDDPBCacheControl_Status

GPBEnumDescriptor *GDDPBCacheControl_Status_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Unset\000Private\000Public\000NoCache\000NoStore\000Not"
        "Modified\000";
    static const int32_t values[] = {
        GDDPBCacheControl_Status_Unset,
        GDDPBCacheControl_Status_Private,
        GDDPBCacheControl_Status_Public,
        GDDPBCacheControl_Status_NoCache,
        GDDPBCacheControl_Status_NoStore,
        GDDPBCacheControl_Status_NotModified,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(GDDPBCacheControl_Status)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:GDDPBCacheControl_Status_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL GDDPBCacheControl_Status_IsValidValue(int32_t value__) {
  switch (value__) {
    case GDDPBCacheControl_Status_Unset:
    case GDDPBCacheControl_Status_Private:
    case GDDPBCacheControl_Status_Public:
    case GDDPBCacheControl_Status_NoCache:
    case GDDPBCacheControl_Status_NoStore:
    case GDDPBCacheControl_Status_NotModified:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum GDDPBCacheControl_RequestCachePolicy

GPBEnumDescriptor *GDDPBCacheControl_RequestCachePolicy_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "UseProtocolCachePolicy\000ReloadIgnoringLoc"
        "alCacheData\000ReturnCacheDataElseLoad\000Retu"
        "rnCacheDataDontLoad\000ReloadElseReturnCach"
        "eData\000";
    static const int32_t values[] = {
        GDDPBCacheControl_RequestCachePolicy_UseProtocolCachePolicy,
        GDDPBCacheControl_RequestCachePolicy_ReloadIgnoringLocalCacheData,
        GDDPBCacheControl_RequestCachePolicy_ReturnCacheDataElseLoad,
        GDDPBCacheControl_RequestCachePolicy_ReturnCacheDataDontLoad,
        GDDPBCacheControl_RequestCachePolicy_ReloadElseReturnCacheData,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(GDDPBCacheControl_RequestCachePolicy)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:GDDPBCacheControl_RequestCachePolicy_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL GDDPBCacheControl_RequestCachePolicy_IsValidValue(int32_t value__) {
  switch (value__) {
    case GDDPBCacheControl_RequestCachePolicy_UseProtocolCachePolicy:
    case GDDPBCacheControl_RequestCachePolicy_ReloadIgnoringLocalCacheData:
    case GDDPBCacheControl_RequestCachePolicy_ReturnCacheDataElseLoad:
    case GDDPBCacheControl_RequestCachePolicy_ReturnCacheDataDontLoad:
    case GDDPBCacheControl_RequestCachePolicy_ReloadElseReturnCacheData:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
