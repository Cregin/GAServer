//
//  GAServerGetCityWeatherByIdRequest.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import <GAServer/GAServer.h>

@interface GAServerGetCityWeatherByIdRequest : GAServerRequest
-(instancetype)initWithcityId:(NSString *)cityId userId:(NSString *)userId;
@end
