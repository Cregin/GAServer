//
//  GAServerUpdateSceneOrderRequest.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/28.
//

#import <GAServer/GAServer.h>

@interface GAServerUpdateSceneOrderRequest : GAServerRequest
-(instancetype)initWithScenceIds:(NSArray<NSString *> *)scenceIds;
@end
