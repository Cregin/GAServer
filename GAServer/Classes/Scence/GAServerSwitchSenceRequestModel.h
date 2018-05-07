//
//  GAServerSwitchSenceRequestModel.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <GAServer/GAServer.h>

@interface GAServerSwitchSenceRequestModel : GAServerRequestModel
@property(nonatomic, assign) int state;
@property(nonatomic, strong) NSString *instanceId;
-(instancetype)initWithState:(int)state instanceId:(NSString *)instanceId;

@end
