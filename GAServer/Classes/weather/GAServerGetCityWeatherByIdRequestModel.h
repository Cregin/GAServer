//
//  GAServerGetCityWeatherByIdRequestModel.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import <GAServer/GAServer.h>

@interface GAServerGetCityWeatherByIdRequestModel : GAServerRequestModel
    @property(nonatomic, strong) NSString *cityId;
    @property(nonatomic, strong) NSString *language;
    @property(nonatomic, strong) NSString *userId;
    -(instancetype)initWithcityId:(NSString *)cityId userId:(NSString *)userId;
@end
