//
//  GAServerUpdateDeviceSetingRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerUpdateDeviceSetingRequest.h"

#import "GAServerUpdateDeviceSetingRequestModel.h"

@interface GAServerUpdateDeviceSetingRequest()
@property(nonatomic, strong) GAServerUpdateDeviceSetingRequestModel *requestModel;
@end
@implementation GAServerUpdateDeviceSetingRequest
-(instancetype)initWithinstanceId:(NSString *)instanceId userId:(NSString *)userId mac:(NSString *)mac deviceType:(NSString *)deviceType deviceSwitch:(NSString *)deviceSwitch wifiType:(NSString *)wifiType deviceStateInfo:(GASmartScenceDeviceStateInfo *)deviceStateInfo classId:(NSString *)classId{
    
    if (self = [super init]) {
        self.requestModel = [[GAServerUpdateDeviceSetingRequestModel alloc]initWithinstanceId:instanceId userId:userId mac:mac deviceType:deviceType deviceSwitch:deviceSwitch wifiType:wifiType deviceStateInfo:deviceStateInfo classId:classId];
    }
    return self;
    
}
-(NSString *)name{
    
    return @"更新场景设备设置";
}
- (NSString *)requestUrl
{
    
    return @"/uhome/acbiz/device/scene/updateDeviceInSmartSceneNew";
}
-(YTKRequestMethod)requestMethod{
    
    return YTKRequestMethodPOST;
}
-(NSString *)basePort{
    
    return @"7263";
}
-(NSString *)cdnPort{
    
    return @"7263";
}
-(id)requestArgument{
    
    return self.requestModel.hr_keyValues;
}
-(NSDictionary<NSString *,NSString *> *)requestHeaderFieldValueDictionary{
    
    return [[GAServerHeaderFileds shareInstance] hr_HeaderFilesWithUWSRequest:self];
}
@end
