//
//  GAServerGetWeatherIndexRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import "GAServerGetWeatherIndexRequest.h"
#import "GAServerGetWeatherIndexRequestModel.h"

@interface GAServerGetWeatherIndexRequest()
    @property(nonatomic, strong) GAServerGetWeatherIndexRequestModel *requestModel;
@end

@implementation GAServerGetWeatherIndexRequest
-(instancetype)initWithcityId:(NSString *)cityId{
    if(self = [super init]){
        
        self.requestModel = [[GAServerGetWeatherIndexRequestModel alloc]initWithcityId:cityId];
    }
    return self;
}
    -(NSString *)name{
        
        return @"根据城市id获取城市天气指数";
    }
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getWeatherIndex";
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
