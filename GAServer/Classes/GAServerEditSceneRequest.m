//
//  GAServerEditSceneRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/28.
//

#import "GAServerEditSceneRequest.h"
#import "GAServerEditSceneRequestModel.h"

@interface GAServerEditSceneRequest ()
@property(nonatomic, strong) GAServerEditSceneRequestModel *requestModel;
@end

@implementation GAServerEditSceneRequest
-(instancetype)initWithsceneId:(NSString *)sceneId sceneName:(NSString *)sceneName sceneDesc:(NSString *)sceneDesc{
    if (self = [super init]) {
        self.requestModel = [[GAServerEditSceneRequestModel alloc]initWithsceneId:sceneId sceneName:sceneName sceneDesc:sceneDesc];
    }
    return self;
}
-(NSString *)name{
    
    return @"编辑用户自定义场景";
}
- (NSString *)requestUrl
{
    
    return @"/uhome/acbiz/device/scene/editSceneNew";
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
