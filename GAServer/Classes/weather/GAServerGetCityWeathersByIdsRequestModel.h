//
//  GAServerGetCityWeathersByIdsRequestModel.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import <GAServer/GAServer.h>

@interface GAServerGetCityWeathersByIdsRequestModel : GAServerRequestModel
    @property(nonatomic, strong) NSString *cityIds;
    @property(nonatomic, strong) NSString *language;
    @property(nonatomic, strong) NSArray<NSString *> *cityIdArray;
    -(instancetype)initWithcityIdArray:(NSArray<NSString *> *)cityIdArray;
@end
