//
//  GAServerUpdateDeviceSetingRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerUpdateDeviceSetingRequestModel.h"

@implementation GAServerUpdateDeviceSetingRequestModel
-(instancetype)initWithinstanceId:(NSString *)instanceId userId:(NSString *)userId mac:(NSString *)mac deviceType:(NSString *)deviceType deviceSwitch:(NSString *)deviceSwitch wifiType:(NSString *)wifiType deviceStateInfo:(GASmartScenceDeviceStateInfo *)deviceStateInfo classId:(NSString *)classId{
    if (self = [super init]) {
        
        self.instanceId = instanceId;
        self.userId = userId;
        self.mac = mac;
        self.deviceType = deviceType;
        self.deviceSwitch = deviceSwitch;
        self.wifiType = wifiType;
        self.deviceStateInfo = deviceStateInfo;
        self.classId = classId;
    }
    return self;
}
@end
