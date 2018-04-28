//
//  GASmartScenceDeviceStateInfo.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GASmartScenceDeviceStateInfo.h"

@implementation GASmartScenceDeviceStateInfo
-(instancetype)initWithproductFunction:(NSString *)productFunction temperature:(NSString *)temperature humidity:(NSString *)humidity windSpeed:(NSString *)windSpeed switchState:(NSString *)switchState{
    if (self = [super init]) {
        
        self.productFunction = productFunction;
        self.temperature = temperature;
        self.humidity = humidity;
        self.windSpeed = windSpeed;
        self.switchState = switchState;
    }
    return self;
}
@end
