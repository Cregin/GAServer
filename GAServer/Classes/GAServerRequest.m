//
//  GAServerRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerRequest.h"
#import "GAServerConfigData.h"
@implementation GAServerRequest
-(NSString *)baseUrl{
    
    if (self.basePort.length) {
        if ([GAServerConfigData shareInstance].config.intValue==0) {
            return [NSString stringWithFormat:@"%@:%@",[GAServerConfigData shareInstance].cdnUrl,self.cdnPort];
        }else if ([GAServerConfigData shareInstance].config.intValue==1) {
            return [NSString stringWithFormat:@"%@:%@",[GAServerConfigData shareInstance].verifyUrl,self.basePort];
        }else{
            return [NSString stringWithFormat:@"%@:%@",[GAServerConfigData shareInstance].baseUrl,self.basePort];
        }
        
    }else{
        
        if ([GAServerConfigData shareInstance].config.intValue==0) {
            return [GAServerConfigData shareInstance].cdnUrl;
        }else if ([GAServerConfigData shareInstance].config.intValue==1) {
            return [GAServerConfigData shareInstance].verifyUrl;
        }else{
            return [GAServerConfigData shareInstance].baseUrl;
        }
    }
}
- (YTKRequestMethod)requestMethod
{
    
    return YTKRequestMethodPOST;
}

-(NSString *)contentType{
    
    return @"application/json;text/html";
}
@end
