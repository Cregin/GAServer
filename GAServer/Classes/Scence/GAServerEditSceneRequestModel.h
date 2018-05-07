//
//  GAServerEditSceneRequestModel.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/28.
//

#import <GAServer/GAServer.h>

@interface GAServerEditSceneRequestModel : GAServerRequestModel
/** 场景ID **/
@property(nonatomic,copy) NSString *sceneId;
/** 场景名称 **/
@property(nonatomic,copy) NSString *sceneName;
/** 场景描述 **/
@property(nonatomic,copy) NSString *sceneDesc;
-(instancetype)initWithsceneId:(NSString *)sceneId sceneName:(NSString *)sceneName sceneDesc:(NSString *)sceneDesc;
@end
