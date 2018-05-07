//
//  GAServerGetCleanMagicDataByMacRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import "GAServerGetCleanMagicDataByMacRequest.h"
#import "GAServerGetCleanMagicDataByMacRequestModel.h"

@interface GAServerGetCleanMagicDataByMacRequest()
    @property(nonatomic, strong) GAServerGetCleanMagicDataByMacRequestModel *requestModel;
@end


@implementation GAServerGetCleanMagicDataByMacRequest
-(instancetype)initWithdeviceMac:(NSString *)deviceMac{
    if(self = [super init]){
        
    }
    return self;
}
    -(NSString *)name{
        
        return @"获取空气净化魔方pm2.5 温度 湿度";
    }
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getCleanMagicDataByMac";
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
