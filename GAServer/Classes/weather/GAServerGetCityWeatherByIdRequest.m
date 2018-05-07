//
//  GAServerGetCityWeatherByIdRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGetCityWeatherByIdRequest.h"
#import "GAServerGetCityWeatherByIdRequestModel.h"

@interface GAServerGetCityWeatherByIdRequest ()
    @property(nonatomic, strong) GAServerGetCityWeatherByIdRequestModel *requestModel;
@end


@implementation GAServerGetCityWeatherByIdRequest
-(instancetype)initWithcityId:(NSString *)cityId userId:(NSString *)userId{
    if(self = [super init]){
        self.requestModel = [[GAServerGetCityWeatherByIdRequestModel alloc]initWithcityId:cityId userId:userId];
    }
    
    return self;
}
-(NSString *)name{
    
    return @"获取城市天气";
}
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getCityWeatherList";
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
