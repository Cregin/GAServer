//
//  GAServerConfigData.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <Foundation/Foundation.h>

@interface GAServerConfigData : NSObject
@property (nonatomic, strong, readonly) NSNumber * config;
@property(nonatomic, strong, readonly) NSString *baseUrl;
@property(nonatomic, strong, readonly) NSString *cdnUrl;
@property(nonatomic, strong, readonly) NSString *verifyUrl;
@property (nonatomic, strong, readonly) NSString *appId;
@property (nonatomic, strong, readonly) NSString *appKey;
@property(nonatomic, strong, readonly) NSString  *appSecret;
@property (nonatomic, strong, readonly) NSString *accessToken;

+ (instancetype)shareInstance;

/**
 在获取到accessToken后设置
 
 @param accessToken 云平台accessToken
 */
- (void)setAccessToken:(NSString *)accessToken;
@end
