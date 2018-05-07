//
//  GAServerGetTempHumDataByMacRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import "GAServerGetTempHumDataByMacRequest.h"
#import "GAServerGetTempHumDataByMacRequestModel.h"

@interface GAServerGetTempHumDataByMacRequest()
    @property(nonatomic, strong) GAServerGetTempHumDataByMacRequestModel *requestModel;
@end

@implementation GAServerGetTempHumDataByMacRequest
-(instancetype)initWithdeviceMac:(NSString *)deviceMac{
    if(self = [super init]){
        
        self.requestModel = [[GAServerGetTempHumDataByMacRequestModel alloc]initWithdeviceMac:deviceMac];
    }
    return self;
}
    -(NSString *)name{
        
        return @"根据mac获取温度湿度";
    }
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getTempHumDataByMac";
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
