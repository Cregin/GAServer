//
//  GAServerSwitchSenceRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerSwitchSenceRequest.h"
#import "GAServerSwitchSenceRequestModel.h"

@interface GAServerSwitchSenceRequest()
@property(nonatomic, strong) GAServerSwitchSenceRequestModel *requestModel;
@end

@implementation GAServerSwitchSenceRequest
-(instancetype)initWithState:(int)state instanceId:(NSString *)instanceId{
    if (self = [super init]) {
        
        self.requestModel = [[GAServerSwitchSenceRequestModel alloc]initWithState:state instanceId:instanceId];
    }
    return self;
}
-(NSString *)name{
    
    return @"控制场景开关";
}
- (NSString *)requestUrl
{
    
    return @"/uhome/acbiz/device/scene/setSceneState";
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
