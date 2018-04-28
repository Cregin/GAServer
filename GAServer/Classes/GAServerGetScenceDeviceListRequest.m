//
//  GAServerGetScenceDeviceListRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerGetScenceDeviceListRequest.h"
#import "GAServerGetScenceDeviceListRequestModel.h"
@interface GAServerGetScenceDeviceListRequest()
@property(nonatomic, strong) GAServerGetScenceDeviceListRequestModel *requestModel;
@end

@implementation GAServerGetScenceDeviceListRequest
-(instancetype)initWithsceneId:(NSString *)sceneId{
    if (self = [super init]) {
        
        self.requestModel = [[GAServerGetScenceDeviceListRequestModel alloc]initWithsceneId:sceneId];
    }
    return self;
}
-(NSString *)name{
    
    return @"获取场景设备列表";
}
- (NSString *)requestUrl
{
    
    return @"/uhome/acbiz/device/scene/getDeviceListBySmartScene";
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
