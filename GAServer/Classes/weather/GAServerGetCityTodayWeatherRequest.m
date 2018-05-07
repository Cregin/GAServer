//
//  GAServerGetCityTodayWeatherRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGetCityTodayWeatherRequest.h"
#import "GAServerGetCityTodayWeatherRequestModel.h"

@interface GAServerGetCityTodayWeatherRequest ()
    @property(nonatomic, strong) GAServerGetCityTodayWeatherRequestModel *requestModel;
@end

@implementation GAServerGetCityTodayWeatherRequest
-(instancetype)initWithcityId:(NSString *)cityId{
    if(self =[super init]){
        
        self.requestModel = [[GAServerGetCityTodayWeatherRequestModel alloc]initWithcityId:cityId];
    }
    return self;
}
-(NSString *)name{
    
    return @"获取城市当日天气";
}
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getCityWeather";
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
