//
//  GAServerDeleteCustomScenceRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/28.
//

#import "GAServerDeleteCustomScenceRequest.h"
#import "GAServerDeleteCustomScenceRequestModel.h"

@interface GAServerDeleteCustomScenceRequest()
@property(nonatomic, strong) GAServerDeleteCustomScenceRequestModel *requestModel;
@end

@implementation GAServerDeleteCustomScenceRequest
-(instancetype)initWithsceneIdsArray:(NSArray<NSString *> *)sceneIdsArray{
    if (self = [super init]) {
        self.requestModel = [[GAServerDeleteCustomScenceRequestModel alloc]initWithsceneIdsArray:sceneIdsArray];
    }
    
    return self;
}
-(NSString *)name{
    
    return @"删除用户自定义场景";
}
- (NSString *)requestUrl
{
    
    return @"/uhome/acbiz/device/scene/deleteSceneNew";
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
