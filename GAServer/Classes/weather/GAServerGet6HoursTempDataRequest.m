//
//  GAServerGet6HoursTempDataRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGet6HoursTempDataRequest.h"
#import "GAServerGet6HoursTempDataRequestModel.h"

@interface GAServerGet6HoursTempDataRequest()
@property(nonatomic, strong) GAServerGet6HoursTempDataRequestModel *requestModel;
@end

@implementation GAServerGet6HoursTempDataRequest
-(instancetype)initWithcityId:(NSString *)cityId{
    if(self =[super init]){
        
        self.requestModel = [[GAServerGet6HoursTempDataRequestModel alloc]initWithcityId:cityId];
    }
    return self;
}
-(NSString *)name{
    
    return @"获取6小时气温";
}
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/get6HoursTempData";
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
