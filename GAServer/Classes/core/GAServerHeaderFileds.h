//
//  GAServerHeaderFileds.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <Foundation/Foundation.h>
#import "GAServerRequest.h"

@interface GAServerHeaderFileds : NSObject
@property (nonatomic, strong, readonly) NSString *appId;
@property (nonatomic, strong, readonly) NSString *appVersion;
@property (nonatomic, strong, readonly) NSString *clientId;
@property (nonatomic, strong, readonly) NSString *sequenceId;
@property (nonatomic, strong, readonly) NSString *accessToken;
@property (nonatomic, strong, readonly) NSString *sign;
@property (nonatomic, strong, readonly) NSString *timestamp;
@property (nonatomic, strong, readonly) NSString *language;
@property (nonatomic, strong, readonly) NSString *timezone;
@property (nonatomic, strong, readonly) NSString *Content_Type;
+ (instancetype)shareInstance;

- (void)setCloudAccessToken:(NSString *)accessToken;
- (NSDictionary<NSString *, NSString *> *)hr_HeaderFilesWithUWSRequest:(GAServerRequest *)request;
@end
