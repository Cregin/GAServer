//
//  GAServerGetWeatherTotalDataRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGetWeatherTotalData2Request.h"
#import "GAServerGetWeatherTotalData2RequestModel.h"

@interface GAServerGetWeatherTotalData2Request()
@property(nonatomic, strong) GAServerGetWeatherTotalData2RequestModel *requestModel;
@end

@implementation GAServerGetWeatherTotalData2Request
-(instancetype)initWithcityId:(NSString *)cityId{
    if(self =[super init]){
        
        self.requestModel = [[GAServerGetWeatherTotalData2RequestModel alloc]initWithcityId:cityId];
    }
    return self;
}
-(NSString *)name{
    
    return @"获取全部天气信息";
}
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getWeatherTotalData2";
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
