//
//  GAServerUpdateSceneOrderRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/28.
//

#import "GAServerUpdateSceneOrderRequest.h"
#import "GAServerUpdateSceneOrderRequestModel.h"

@interface GAServerUpdateSceneOrderRequest()
@property(nonatomic, strong) GAServerUpdateSceneOrderRequestModel *requestModel;
@end

@implementation GAServerUpdateSceneOrderRequest
-(instancetype)initWithScenceIds:(NSArray<NSString *> *)scenceIds{
    if (self = [super init]) {
        
        self.requestModel = [[GAServerUpdateSceneOrderRequestModel alloc]initWithScenceIds:scenceIds];
    }
    
    return self;
}

-(NSString *)name{
    
    return @"更新场景顺序";
}
- (NSString *)requestUrl
{
    
    return @"/uhome/acbiz/device/scene/updateSceneDisplayOrderNew";
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
    
    return self.requestModel.orderIds;
}
-(NSDictionary<NSString *,NSString *> *)requestHeaderFieldValueDictionary{
    
    return [[GAServerHeaderFileds shareInstance] hr_HeaderFilesWithUWSRequest:self];
}
@end
