//
//  GAServerSwitchSenceRequest.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <GAServer/GAServer.h>

@interface GAServerSwitchSenceRequest : GAServerRequest
-(instancetype)initWithState:(int)state instanceId:(NSString *)instanceId;
@end
