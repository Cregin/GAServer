//
//  GAServerCustomRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerCustomRequestModel.h"

@implementation GAServerCustomRequestModel
-(instancetype)initWithsceneDesc:(NSString *)sceneDesc userId:(NSString *)userId sceneName:(NSString *)sceneName deviceOption:(GAServerAddDeviceToScenceRequestModel *)deviceOption{
    if (self = [super init]) {
        
        
        self.sceneDesc = sceneDesc;
        self.userId = userId;
        self.devOptList = @[deviceOption];
        self.sceneName = sceneName;
    }
    return self;
}
@end
