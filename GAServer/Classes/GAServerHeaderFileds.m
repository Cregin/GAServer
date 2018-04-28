//
//  GAServerHeaderFileds.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerHeaderFileds.h"
#import <MJExtension/MJExtension.h>
#import <HRNetwork/HRNetwork.h>
#import "GAServerConfigData.h"

@interface GAServerHeaderFileds ()
@property (nonatomic, strong) NSString *appId;
@property (nonatomic, strong) NSString *appVersion;
@property (nonatomic, strong) NSString *clientId;
@property (nonatomic, strong) NSString *sequenceId;
@property (nonatomic, strong) NSString *accessToken;
@property (nonatomic, strong) NSString *sign;
@property (nonatomic, strong) NSString *timestamp;
@property (nonatomic, strong) NSString *language;
@property (nonatomic, strong) NSString *timezone;
@property (nonatomic, strong) NSString *Content_Type;

@end
@implementation GAServerHeaderFileds
+ (instancetype)shareInstance
{
    static GAServerHeaderFileds *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[GAServerHeaderFileds alloc] init];
    });
    
    return instance;
}
-(instancetype)init{
    if (self = [super init]) {
        
        [self setup];
    }
    
    return self;
}
#pragma mark - MJExtension
+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    
    return @{ @"Content_Type" : @"Content-Type" };
}
- (void)setup
{
    self.appId = [GAServerConfigData shareInstance].appId;
    self.language = @"zh-cn";
    self.timezone = @"8";
    self.appVersion = [HRWRequestTool hr_appversion];
    self.clientId = [HRWRequestTool hr_clienId];
    self.accessToken = @"TGT3KRX25NK8QD33206AHGZVTMFBU0";
}
- (void)setCloudAccessToken:(NSString *)accessToken
{
    
    _accessToken = accessToken;
}
#pragma mark - public method
- (NSDictionary<NSString *, NSString *> *)hr_HeaderFilesWithUWSRequest:(GAServerRequest *)request
{
    
    self.timestamp = [[HRWRequestTool Unixtimestamp] copy];
    self.sequenceId = [HRWRequestTool hr_UWSsequenceId];
    self.Content_Type = request.contentType;
    NSString *url = request.requestUrl;
    NSString *bodyString = [HRWRequestTool hr_argumentConverString:request.requestArgument];
    NSString *signString = [NSString stringWithFormat:@"%@%@%@%@%@", url, bodyString ?: @"", self.appId, [GAServerConfigData shareInstance].appKey, self.timestamp];
    NSLog(@"%@", signString);
    self.sign = [signString sha256String];
    
    NSLog(@"%@", self.sign);
    
    return self.mj_keyValues;
}
@end
