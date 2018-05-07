//
//  GAServergetWeekTimeByMacRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import "GAServergetWeekTimeByMacRequest.h"
#import "GAServergetWeekTimeByMacRequestModel.h"

@interface GAServergetWeekTimeByMacRequest()
    @property(nonatomic, strong) GAServergetWeekTimeByMacRequestModel *requestModel;
@end

@implementation GAServergetWeekTimeByMacRequest
    -(instancetype)initWithdeviceMac:(NSString *)deviceMac{
        if(self = [super init]){
            
            self.requestModel = [[GAServergetWeekTimeByMacRequestModel alloc]initWithdeviceMac:deviceMac];
        }
        return self;
    }
    -(NSString *)name{
        
        return @"根据mac 或者设备周定时";
    }
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getWeekTimeByMac";
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
