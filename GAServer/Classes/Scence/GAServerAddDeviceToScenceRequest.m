//
//  GAServerAddDeviceToScenceRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerAddDeviceToScenceRequest.h"

@interface GAServerAddDeviceToScenceRequest()
@property(nonatomic, strong) GAServerAddDeviceToScenceRequestModel *requestModel;
@end

@implementation GAServerAddDeviceToScenceRequest
-(instancetype)initWithinstanceId:(NSString *)instanceId userId:(NSString *)userId mac:(NSString *)mac deviceType:(NSString *)deviceType deviceSwitch:(NSString *)deviceSwitch wifiType:(NSString *)wifiType deviceStateInfo:(GASmartScenceDeviceStateInfo *)deviceStateInfo classId:(NSString *)classId{
    
    if (self = [super init]) {
        self.requestModel = [[GAServerAddDeviceToScenceRequestModel alloc]initWithinstanceId:instanceId userId:userId mac:mac deviceType:deviceType deviceSwitch:deviceSwitch wifiType:wifiType deviceStateInfo:deviceStateInfo classId:classId];
    }
    return self;
    
}
-(NSString *)name{
    
    return @"为场景添加设备";
}
- (NSString *)requestUrl
{
    
    return @"/uhome/acbiz/device/scene/addDeviceInSmartSceneNew";
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
