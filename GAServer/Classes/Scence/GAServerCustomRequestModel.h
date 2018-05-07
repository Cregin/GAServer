//
//  GAServerCustomRequestModel.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <GAServer/GAServer.h>
#import "GAServerAddDeviceToScenceRequestModel.h"
@interface GAServerCustomRequestModel : GAServerRequestModel
/**  场景描述 **/
@property(nonatomic,copy) NSString *sceneDesc;
/** 场景内容 **/
@property(nonatomic,strong) NSArray <GAServerAddDeviceToScenceRequestModel*>*devOptList;
/** 用户id **/
@property(nonatomic,copy) NSString *userId;
/** 场景名称 **/
@property(nonatomic,copy) NSString *sceneName;

-(instancetype)initWithsceneDesc:(NSString *)sceneDesc userId:(NSString *)userId sceneName:(NSString *)sceneName deviceOption:(GAServerAddDeviceToScenceRequestModel *)deviceOption;
@end
