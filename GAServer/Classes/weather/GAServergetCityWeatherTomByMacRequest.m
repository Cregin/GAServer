//
//  GAServergetCityWeatherTomByMacRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import "GAServergetCityWeatherTomByMacRequest.h"
#import "GAServergetCityWeatherTomByMacRequestModel.h"

@interface GAServergetCityWeatherTomByMacRequest()
@property(nonatomic, strong) GAServergetCityWeatherTomByMacRequestModel *requestModel;
@end

@implementation GAServergetCityWeatherTomByMacRequest
-(instancetype)initWithdeviceMac:(NSString *)deviceMac{
    if(self = [super init]){
        
        self.requestModel = [[GAServergetCityWeatherTomByMacRequestModel alloc]initWithdeviceMac:deviceMac];
    }
    return self;
}
    -(NSString *)name{
        
        return @"根据mac 获取明日天气";
    }
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getCityWeatherTomByMac";
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
