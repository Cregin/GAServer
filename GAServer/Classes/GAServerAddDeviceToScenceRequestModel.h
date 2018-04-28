//
//  GAServerAddDeviceToScenceRequestModel.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <GAServer/GAServer.h>
#import "GASmartScenceDeviceStateInfo.h"
@interface GAServerAddDeviceToScenceRequestModel : GAServerRequestModel
/** 场景ID **/
@property(nonatomic,copy) NSString *instanceId;
/** 用户id **/
@property(nonatomic,copy) NSString *userId;
/** 设备mac **/
@property(nonatomic,copy) NSString *mac;
/** 设备类型 **/
@property(nonatomic,copy) NSString *deviceType;
/** 场景开关 **/
@property(nonatomic,copy) NSString *deviceSwitch;
/** typeid **/
@property(nonatomic,copy) NSString *wifiType;
/** 设备功能信息 **/
@property(nonatomic,strong) GASmartScenceDeviceStateInfo *deviceStateInfo;
/** 房间ID **/
@property(nonatomic,copy) NSString *classId;

-(instancetype)initWithinstanceId:(NSString *)instanceId userId:(NSString *)userId mac:(NSString *)mac deviceType:(NSString *)deviceType deviceSwitch:(NSString *)deviceSwitch wifiType:(NSString *)wifiType deviceStateInfo:(GASmartScenceDeviceStateInfo *)deviceStateInfo classId:(NSString *)classId;
@end
