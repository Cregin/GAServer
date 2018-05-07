//
//  GAServerGet5DaysWeatherDataRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGet5DaysWeatherDataRequest.h"
#import "GAServerGet5DaysWeatherDataRequestModel.h"

@interface GAServerGet5DaysWeatherDataRequest()
    @property(nonatomic, strong) GAServerGet5DaysWeatherDataRequestModel *requestModel;
@end

@implementation GAServerGet5DaysWeatherDataRequest
-(instancetype)initWithcityId:(NSString *)cityId{
    if(self =[super init]){
        
        self.requestModel = [[GAServerGet5DaysWeatherDataRequestModel alloc]initWithcityId:cityId];
    }
    return self;
}
-(NSString *)name{
    
    return @"获取5日天气";
}
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/get5DaysWeatherData";
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
