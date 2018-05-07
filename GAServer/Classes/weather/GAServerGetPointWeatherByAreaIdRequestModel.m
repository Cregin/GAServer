//
//  GAServerGetPointWeatherByAreaIdRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import "GAServerGetPointWeatherByAreaIdRequestModel.h"

@implementation GAServerGetPointWeatherByAreaIdRequestModel
-(instancetype)initWithcityId:(NSString *)cityId{
    if(self = [super init]){
        self.language = @"zh_cn";
        self.cityId = cityId;
    }
    return self;
}
@end
