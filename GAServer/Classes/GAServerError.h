//
//  GAServerError.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <Foundation/Foundation.h>
#import "GAServerRequest.h"
@class GAServerError;
typedef void (^GAServerFailureCallback)(GAServerError *error);
@interface GAServerError : NSObject
@property (nonatomic, assign, readonly) BOOL success;
@property (nonatomic, strong, readonly) NSString *retCode;
@property (nonatomic, strong, readonly) NSString *retInfo;
- (instancetype)initWithsuccess:(BOOL)success RetCode:(NSString *)retCode retInfo:(NSString *)retInfo;
- (instancetype)initWithRequest:(GAServerRequest *)request;
@end
