//
//  GAServerCustomRequest.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <GAServer/GAServer.h>
@class GAServerAddDeviceToScenceRequestModel;
@interface GAServerCustomRequest : GAServerRequest
-(instancetype)initWithsceneDesc:(NSString *)sceneDesc userId:(NSString *)userId sceneName:(NSString *)sceneName deviceOption:(GAServerAddDeviceToScenceRequestModel *)deviceOption;
@end
