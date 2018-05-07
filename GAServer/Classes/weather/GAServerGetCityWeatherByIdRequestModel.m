//
//  GAServerGetCityWeatherByIdRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGetCityWeatherByIdRequestModel.h"



@implementation GAServerGetCityWeatherByIdRequestModel
-(instancetype)initWithcityId:(NSString *)cityId userId:(NSString *)userId{
    if(self = [super init]){
        
        self.cityId = cityId;
        self.language = @"zh_cn";
        self.userId = userId;
    }
    return self;
}
@end
