//
//  GAServerGetCityWeatherByMacRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGetCityWeatherByMacRequest.h"
#import "GAServerGetCityWeatherByMacRequestModel.h"

@interface GAServerGetCityWeatherByMacRequest()
    @property(nonatomic, strong) GAServerGetCityWeatherByMacRequestModel *requestModel;
@end
@implementation GAServerGetCityWeatherByMacRequest
    -(instancetype)initWithdeviceMac:(NSString *)deviceMac{
        if(self = [super init]){
            
            self.requestModel = [[GAServerGetCityWeatherByMacRequestModel alloc]initWithdeviceMac:deviceMac];
        }
        return self;
    }
-(NSString *)name{
    
    return @"根据mac获取城市天气";
}
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getCityWeatherByMac";
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
