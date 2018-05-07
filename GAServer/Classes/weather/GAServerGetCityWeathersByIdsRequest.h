//
//  GAServerGetCityWeathersByIdsRequest.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import <GAServer/GAServer.h>

@interface GAServerGetCityWeathersByIdsRequest : GAServerRequest
   
    -(instancetype)initWithcityIdArray:(NSArray<NSString *> *)cityIdArray;
@end
