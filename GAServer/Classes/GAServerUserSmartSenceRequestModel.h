//
//  GAUserSmartSenceRequestModel.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <GAServer/GAServer.h>

@interface GAServerUserSmartSenceRequestModel : GAServerRequestModel
@property(nonatomic, strong) NSString *userId;
-(instancetype)initWithUserId:(NSString *)userId;
@end
