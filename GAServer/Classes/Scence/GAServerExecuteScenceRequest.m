//
//  GAServerExecuteScenceRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerExecuteScenceRequest.h"
#import "GAServerExecuteScenceRequestModel.h"

@interface GAServerExecuteScenceRequest()
@property(nonatomic, strong) GAServerExecuteScenceRequestModel *requestModel;
@end

@implementation GAServerExecuteScenceRequest
-(instancetype)initWithsceneId:(NSString *)sceneId{
    if (self = [super init]) {
        
        self.requestModel = [[GAServerExecuteScenceRequestModel alloc]initWithsceneId:sceneId];
    }
    return self;
}
-(NSString *)name{
    
    return @"执行场景";
}
- (NSString *)requestUrl
{
    
    return @"/uhome/acbiz/device/scene/doSceneNew";
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
