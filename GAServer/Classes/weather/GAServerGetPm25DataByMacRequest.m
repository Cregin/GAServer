//
//  GAServerGetPm25DataByMacRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGetPm25DataByMacRequest.h"
#import "GAServerGetPm25DataByMacRequestModel.h"

@interface GAServerGetPm25DataByMacRequest()
    @property(nonatomic, strong) GAServerGetPm25DataByMacRequestModel *requestModel;
    @end
@implementation GAServerGetPm25DataByMacRequest
    -(instancetype)initWithdeviceMac:(NSString *)deviceMac{
        if(self = [super init]){
            
            self.requestModel = [[GAServerGetPm25DataByMacRequestModel alloc]initWithdeviceMac:deviceMac];
        }
        return self;
    }
-(NSString *)name{
    
    return @"根据mac获取城市PM2.5";
}
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getPm25DataByMac";
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
