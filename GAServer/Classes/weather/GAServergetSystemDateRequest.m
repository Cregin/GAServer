//
//  GAServergetSystemDateRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import "GAServergetSystemDateRequest.h"

@implementation GAServergetSystemDateRequest
-(NSString *)name{
    
    return @"获取服务器时间";
}
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getSystemDate";
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
-(NSDictionary<NSString *,NSString *> *)requestHeaderFieldValueDictionary{
    
    return [[GAServerHeaderFileds shareInstance] hr_HeaderFilesWithUWSRequest:self];
}
@end
