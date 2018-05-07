//
//  GAServerGetPointWeatherByAreaIdRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import "GAServerGetPointWeatherByAreaIdRequest.h"
#import "GAServerGetPointWeatherByAreaIdRequestModel.h"


@interface GAServerGetPointWeatherByAreaIdRequest()
    @property(nonatomic, strong) GAServerGetPointWeatherByAreaIdRequestModel *requestModel;
@end


@implementation GAServerGetPointWeatherByAreaIdRequest
-(instancetype)initWithcityId:(NSString *)cityId{
    if(self = [super init]){
        
        self.requestModel = [[GAServerGetPointWeatherByAreaIdRequestModel alloc]initWithcityId:cityId];
    }
    return self;
}
    -(NSString *)name{
        
        return @"获取城市48小时天气";
    }
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getPointWeatherByArea";
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
