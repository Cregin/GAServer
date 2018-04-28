//
//  GAServerEditSceneRequest.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/28.
//

#import <GAServer/GAServer.h>

@interface GAServerEditSceneRequest : GAServerRequest
-(instancetype)initWithsceneId:(NSString *)sceneId sceneName:(NSString *)sceneName sceneDesc:(NSString *)sceneDesc;
@end
