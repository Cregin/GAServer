//
//  GAServerGet5DaysWeatherDataRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGet5DaysWeatherDataRequestModel.h"

@implementation GAServerGet5DaysWeatherDataRequestModel
-(instancetype)initWithcityId:(NSString *)cityId{
    if(self = [super init]){
        self.language = @"zh_cn";
        self.cityId = cityId;
    }
    return self;
}
@end
