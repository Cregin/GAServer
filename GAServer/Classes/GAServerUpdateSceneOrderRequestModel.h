//
//  GAServerUpdateSceneOrderRequestModel.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/28.
//

#import <GAServer/GAServer.h>

@interface GAServerUpdateSceneOrderItem: NSObject
@property(nonatomic, strong) NSString *sceneId;
-(instancetype)initWithsceneId:(NSString *)sceneId;
@end

@interface GAServerUpdateSceneOrderRequestModel : GAServerRequestModel
@property(nonatomic, strong, readonly) NSArray <GAServerUpdateSceneOrderItem *>*sceneIds;
@property(nonatomic, strong, readonly) NSArray<NSDictionary<NSString *,NSString *> *> *orderIds;
-(instancetype)initWithScenceIds:(NSArray<NSString *> *)scenceIds;
@end
