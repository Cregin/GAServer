//
//  GAServerGetAirBoxDataByMacRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import "GAServerGetAirBoxDataByMacRequest.h"
#import "GAServerGetAirBoxDataByMacRequestModel.h"

@interface GAServerGetAirBoxDataByMacRequest()
    @property(nonatomic, strong) GAServerGetAirBoxDataByMacRequestModel *requestModel;
@end

@implementation GAServerGetAirBoxDataByMacRequest
-(instancetype)initWithdeviceMac:(NSString *)deviceMac{
    if(self = [super init]){
        
        self.requestModel = [[GAServerGetAirBoxDataByMacRequestModel alloc]initWithdeviceMac:deviceMac];
    }
    return self;
}
    -(NSString *)name{
        
        return @"获取空气盒子pm2.5 温度 湿度";
    }
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getAirBoxDataByMac";
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
