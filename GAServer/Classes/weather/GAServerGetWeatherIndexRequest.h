//
//  GAServerGetWeatherIndexRequest.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import <GAServer/GAServer.h>

@interface GAServerGetWeatherIndexRequest : GAServerRequest
-(instancetype)initWithcityId:(NSString *)cityId;
@end
