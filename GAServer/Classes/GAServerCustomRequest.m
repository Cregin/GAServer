//
//  GAServerCustomRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerCustomRequest.h"
#import "GAServerCustomRequestModel.h"

@interface GAServerCustomRequest()
@property(nonatomic, strong) GAServerCustomRequestModel *requestModel;
@end

@implementation GAServerCustomRequest
-(instancetype)initWithsceneDesc:(NSString *)sceneDesc userId:(NSString *)userId sceneName:(NSString *)sceneName deviceOption:(GAServerAddDeviceToScenceRequestModel *)deviceOption{
    if (self = [super init]) {
        
        
        self.requestModel = [[GAServerCustomRequestModel alloc]initWithsceneDesc:sceneDesc userId:userId sceneName:sceneName deviceOption:deviceOption];
    }
    return self;
}
-(NSString *)name{
    
    return @"创建智能场景";
}
- (NSString *)requestUrl
{
    
    return @"/uhome/acbiz/device/scene/createSceneNew";
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
