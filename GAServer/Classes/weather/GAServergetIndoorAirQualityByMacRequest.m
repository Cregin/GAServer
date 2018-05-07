//
//  GAServergetIndoorAirQualityByMacRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import "GAServergetIndoorAirQualityByMacRequest.h"
#import "GAServergetIndoorAirQualityByMacRequestModel.h"
@interface GAServergetIndoorAirQualityByMacRequest()
@property(nonatomic, strong) GAServergetIndoorAirQualityByMacRequestModel *requestModel;
@end
@implementation GAServergetIndoorAirQualityByMacRequest
-(instancetype)initWithdeviceMac:(NSString *)deviceMac{
    if(self = [super init]){
        
        self.requestModel = [[GAServergetIndoorAirQualityByMacRequestModel alloc]initWithdeviceMac:deviceMac];
    }
    return self;
}
-(NSString *)name{
    
    return @"根据mac 获取室内空气质量";
}
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getIndoorAirQualityByMac";
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
