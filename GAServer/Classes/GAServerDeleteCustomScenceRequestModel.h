//
//  GAServerDeleteCustomScenceRequestModel.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/28.
//

#import <GAServer/GAServer.h>

@interface GAServerDeleteCustomScenceRequestModel : GAServerRequestModel
@property(nonatomic, strong,readonly) NSArray<NSString *> *sceneIdsArray;
@property(nonatomic, strong, readonly) NSString *sceneIds;
-(instancetype)initWithsceneIdsArray:(NSArray<NSString *> *)sceneIdsArray;
@end
