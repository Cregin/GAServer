//
//  GAServerSwitchSenceRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerSwitchSenceRequestModel.h"

@implementation GAServerSwitchSenceRequestModel
-(instancetype)initWithState:(int)state instanceId:(NSString *)instanceId{
    if (self = [super init]) {
        
        self.state = state;
        self.instanceId = instanceId;
    }
    return self;
}
@end
