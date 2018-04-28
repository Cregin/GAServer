//
//  GAServerGetScenceDeviceListRequestModel.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <GAServer/GAServer.h>

@interface GAServerGetScenceDeviceListRequestModel : GAServerRequestModel
@property(nonatomic, strong) NSString *sceneId;
-(instancetype)initWithsceneId:(NSString *)sceneId;
@end
