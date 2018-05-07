//
//  GAServerGetWeatherIndexRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import "GAServerGetWeatherIndexRequestModel.h"

@implementation GAServerGetWeatherIndexRequestModel
-(instancetype)initWithcityId:(NSString *)cityId{
    if(self = [super init]){
        self.language = @"zh_cn";
        self.cityId = cityId;
    }
    return self;
}
@end
