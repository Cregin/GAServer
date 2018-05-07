//
//  GAServerDeleteScenceDeviceRequestModel.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <GAServer/GAServer.h>

@interface GAServerDeleteScenceDeviceRequestModel : GAServerRequestModel
@property(nonatomic, strong) NSString *_id;
-(instancetype)initWithId:(NSString *)_id;
@end
