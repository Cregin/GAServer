//
//  GAServergetCityWeatherTomByMacRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/7.
//

#import "GAServergetCityWeatherTomByMacRequestModel.h"

@implementation GAServergetCityWeatherTomByMacRequestModel
-(instancetype)initWithdeviceMac:(NSString *)deviceMac{
    if(self = [super init]){
        
        self.deviceMac = deviceMac;
    }
    return self;
}
@end
