//
//  GAServerGetPointWeatherByAreaIdRequest.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import <GAServer/GAServer.h>

@interface GAServerGetPointWeatherByAreaIdRequest : GAServerRequest
-(instancetype)initWithcityId:(NSString *)cityId;
@end
