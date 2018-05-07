//
//  GAServerGetCityWeathersByIdsRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGetCityWeathersByIdsRequestModel.h"
#import <MJExtension/MJExtension.h>
@implementation GAServerGetCityWeathersByIdsRequestModel
+(NSArray *)mj_ignoredPropertyNames{
    
    return @[@"cityIdArray"];
}
-(instancetype)initWithcityIdArray:(NSArray<NSString *> *)cityIdArray{
    if(self = [super init]){
        
        self.language =@"zh_cn";
        self.cityIdArray = cityIdArray;
        self.cityIds = [cityIdArray componentsJoinedByString:@","];
    }
    return self;
}
@end
