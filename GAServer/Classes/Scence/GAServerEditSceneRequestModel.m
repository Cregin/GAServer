//
//  GAServerEditSceneRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/28.
//

#import "GAServerEditSceneRequestModel.h"

@implementation GAServerEditSceneRequestModel
-(instancetype)initWithsceneId:(NSString *)sceneId sceneName:(NSString *)sceneName sceneDesc:(NSString *)sceneDesc{
    
    if (self = [super init]) {
        
        self.sceneName = sceneName;
        self.sceneId = sceneId;
        self.sceneDesc = sceneDesc;
    }
    
    return self;
}
@end
