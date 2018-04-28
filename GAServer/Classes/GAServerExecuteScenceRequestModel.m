//
//  GAServerExecuteScenceRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerExecuteScenceRequestModel.h"

@implementation GAServerExecuteScenceRequestModel
-(instancetype)initWithsceneId:(NSString *)sceneId{
    if (self = [super init]) {
        
        self.sceneId = sceneId;
    }
    return self;
}
@end
