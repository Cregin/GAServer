//
//  GAServerError.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerError.h"
static NSString *const ksuccessRetCode = @"00000";

static NSString *const knetErrorRetCode = @"网络错误";
static NSString *const knetErrorRetInfo = @"您的网络暂时无法连接，请稍后重试";

@interface GAServerError ()
@property (nonatomic, assign) BOOL success;
@property (nonatomic, strong) NSString *retCode;
@property (nonatomic, strong) NSString *retInfo;

@end
@implementation GAServerError
- (instancetype)initWithsuccess:(BOOL)success RetCode:(NSString *)retCode retInfo:(NSString *)retInfo
{
    if (self = [super init]) {
        
        self.success = success;
        self.retCode = retCode;
        self.retInfo = retInfo;
    }
    
    return self;
}
-(instancetype)initWithRequest:(GAServerRequest *)request{
    if (self = [super init]) {
        if (request.error) {
            
            self.success = NO;
            self.retCode = knetErrorRetCode;
            self.retInfo = knetErrorRetInfo;
        }
        else if ([request.responseObject[@"retCode"] isEqualToString:ksuccessRetCode]) {
            
            self.success = YES;
            self.retCode = request.responseObject[@"retCode"];
            self.retInfo = request.responseObject[@"retInfo"];
        }
        else {
            
            self.success = NO;
            self.retCode = request.responseObject[@"retCode"] ?: @"未知错误";
            self.retInfo = request.responseObject[@"retInfo"] ?: @"未知错误";
        }
    }
    return self;
}
@end
