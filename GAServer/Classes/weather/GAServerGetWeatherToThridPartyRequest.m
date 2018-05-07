//
//  GAServerGetWeatherToThridPartyRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGetWeatherToThridPartyRequest.h"
#import "GAServerGetWeatherToThridPartyRequestModel.h"

@interface GAServerGetWeatherToThridPartyRequest()
    @property(nonatomic, strong) GAServerGetWeatherToThridPartyRequestModel *requestModel;
@end

@implementation GAServerGetWeatherToThridPartyRequest
-(instancetype)initWithcityId:(NSString *)cityId{
    if(self = [super init]){
        self.requestModel = [[GAServerGetWeatherToThridPartyRequestModel alloc]initWithcityId:cityId];
    }
    return self;
}
-(NSString *)name{
    
    return @"第三方获取天气";
}
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getWeatherToThridParty";
    }
-(YTKRequestMethod)requestMethod{
    
    return YTKRequestMethodPOST;
}
-(NSString *)basePort{
    
    return @"7253";
}
-(NSString *)cdnPort{
    
    return @"7253";
}
-(id)requestArgument{
    
    return self.requestModel.hr_keyValues;
}
-(NSDictionary<NSString *,NSString *> *)requestHeaderFieldValueDictionary{
    
    return [[GAServerHeaderFileds shareInstance] hr_HeaderFilesWithUWSRequest:self];
}
@end
