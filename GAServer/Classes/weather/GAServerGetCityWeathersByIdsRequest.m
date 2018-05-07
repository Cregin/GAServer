//
//  GAServerGetCityWeathersByIdsRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGetCityWeathersByIdsRequest.h"
#import "GAServerGetCityWeathersByIdsRequestModel.h"

@interface GAServerGetCityWeathersByIdsRequest ()
@property(nonatomic, strong)  GAServerGetCityWeathersByIdsRequestModel*requestModel;
@end

@implementation GAServerGetCityWeathersByIdsRequest
-(instancetype)initWithcityIdArray:(NSArray<NSString *> *)cityIdArray{
    if(self = [super init]){
        
        self.requestModel = [[GAServerGetCityWeathersByIdsRequestModel alloc]initWithcityIdArray:cityIdArray];
    }
    return self;
}
    -(NSString *)name{
        
        return @"获取多城市天气";
    }
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getWeatherListByCityIds";
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
