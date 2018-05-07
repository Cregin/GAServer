//
//  GAServerGetCityWeatherByMacRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGetCityWeatherByMacRequestModel.h"

@implementation GAServerGetCityWeatherByMacRequestModel
-(instancetype)initWithdeviceMac:(NSString *)deviceMac{
    if(self = [super init]){
        
        self.deviceMac = deviceMac;
    }
    return self;
}
@end
