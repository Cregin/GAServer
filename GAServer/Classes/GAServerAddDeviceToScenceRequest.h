//
//  GAServerAddDeviceToScenceRequest.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <GAServer/GAServer.h>
#import "GAServerAddDeviceToScenceRequestModel.h"
@class GASmartScenceDeviceStateInfo;
@interface GAServerAddDeviceToScenceRequest : GAServerRequest
-(instancetype)initWithinstanceId:(NSString *)instanceId userId:(NSString *)userId mac:(NSString *)mac deviceType:(NSString *)deviceType deviceSwitch:(NSString *)deviceSwitch wifiType:(NSString *)wifiType deviceStateInfo:(GASmartScenceDeviceStateInfo *)deviceStateInfo classId:(NSString *)classId;
@end
