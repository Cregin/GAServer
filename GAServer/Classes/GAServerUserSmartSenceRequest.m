//
//  GAUserSmartSenceRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerUserSmartSenceRequest.h"
#import "GAServerUserSmartSenceRequestModel.h"

@interface GAServerUserSmartSenceRequest()
@property(nonatomic, strong) GAServerUserSmartSenceRequestModel *requestModel;
@end

@implementation GAServerUserSmartSenceRequest
-(instancetype)initWithUserId:(NSString *)userId{
    if (self = [super init]) {
        
        self.requestModel = [[GAServerUserSmartSenceRequestModel alloc]initWithUserId:userId];
    }
    return self;
}
-(NSString *)name{
    
    return @"获取用户智能场景列表接口";
}
- (NSString *)requestUrl
{
    
    return @"/uhome/acbiz/device/scene/getSmartSceneNew";
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
