//
//  GAServerGetWeatherTotalDataRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGetWeatherTotalDataRequestModel.h"

@implementation GAServerGetWeatherTotalDataRequestModel
-(instancetype)initWithcityId:(NSString *)cityId{
    if(self = [super init]){
        self.language = @"zh_cn";
        self.cityId = cityId;
    }
    return self;
}
@end
