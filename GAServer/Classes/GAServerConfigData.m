//
//  GAServerConfigData.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerConfigData.h"
#import "GAServerHeaderFileds.h"
@interface GAServerConfigData ()
@property (nonatomic, strong) NSNumber * config;
@property(nonatomic, strong) NSString *baseUrl;
@property(nonatomic, strong) NSString *cdnUrl;
@property(nonatomic, strong) NSString *verifyUrl;
@property (nonatomic, strong) NSString *appId;
@property (nonatomic, strong) NSString *appKey;
@property(nonatomic, strong) NSString  *appSecret;
@property (nonatomic, strong) NSString *accessToken;
@end
@implementation GAServerConfigData
+ (instancetype)shareInstance{
    
    static GAServerConfigData * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[GAServerConfigData alloc]init];
        [instance setupWithconfigFiled];
    });
    
    return instance;
}
- (void)setupWithconfigFiled
{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"GAServerConfig" ofType:@"plist"];
    NSDictionary *dic = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    self.config = dic[@"config"];
    self.baseUrl = dic[@"baseUrl"];
    self.cdnUrl = dic[@"cdnUrl"];
    self.verifyUrl = dic[@"verifyUrl"];
    if (self.config.intValue == 1 || self.config.intValue == 2) {
        
        NSDictionary *productData = dic[@"product"];
        self.appId = productData[@"appId"];
        self.appKey = productData[@"appKey"];
        self.appSecret = productData[@"appSecret"];
    }
    else {
        NSDictionary *developData = dic[@"develop"];
        self.appId = developData[@"appId"];
        self.appKey = developData[@"appKey"];
        self.appSecret = developData[@"appSecret"];
    }
}
- (void)setAccessToken:(NSString *)accessToken
{
    
    _accessToken = accessToken;
    
    [[GAServerHeaderFileds shareInstance] setCloudAccessToken:accessToken];
}
@end
