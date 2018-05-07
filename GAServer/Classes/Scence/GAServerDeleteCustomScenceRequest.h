//
//  GAServerDeleteCustomScenceRequest.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/28.
//

#import <GAServer/GAServer.h>

@interface GAServerDeleteCustomScenceRequest : GAServerRequest
-(instancetype)initWithsceneIdsArray:(NSArray<NSString *> *)sceneIdsArray;
@end
