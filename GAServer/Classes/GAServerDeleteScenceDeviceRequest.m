//
//  GAServerDeleteScenceDeviceRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerDeleteScenceDeviceRequest.h"
#import "GAServerDeleteScenceDeviceRequestModel.h"

@interface GAServerDeleteScenceDeviceRequest()
@property(nonatomic, strong) GAServerDeleteScenceDeviceRequestModel *requestModel;
@end

@implementation GAServerDeleteScenceDeviceRequest
-(instancetype)initWithId:(NSString *)_id{
    if (self = [super init]) {
        
        
        self.requestModel = [[GAServerDeleteScenceDeviceRequestModel alloc]initWithId:_id];
    }
    return self;
}
-(NSString *)name{
    
    return @"获取场景设备列表";
}
- (NSString *)requestUrl
{
    
    return @"/uhome/acbiz/device/scene/deleteDeviceInSmartSceneNew";
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
