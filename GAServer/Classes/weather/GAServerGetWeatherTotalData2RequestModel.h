//
//  GAServerGetWeatherTotalDataRequestModel.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import <GAServer/GAServer.h>

@interface GAServerGetWeatherTotalData2RequestModel : GAServerRequestModel
    @property(nonatomic, strong) NSString *cityId;
    @property(nonatomic, strong) NSString *language;
    -(instancetype)initWithcityId:(NSString *)cityId;
@end
