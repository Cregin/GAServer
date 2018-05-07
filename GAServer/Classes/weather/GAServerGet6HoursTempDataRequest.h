//
//  GAServerGet6HoursTempDataRequest.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import <GAServer/GAServer.h>

@interface GAServerGet6HoursTempDataRequest : GAServerRequest
-(instancetype)initWithcityId:(NSString *)cityId;
@end
