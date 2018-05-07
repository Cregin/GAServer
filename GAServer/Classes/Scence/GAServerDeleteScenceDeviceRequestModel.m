//
//  GAServerDeleteScenceDeviceRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerDeleteScenceDeviceRequestModel.h"
#import <MJExtension/MJExtension.h>
@implementation GAServerDeleteScenceDeviceRequestModel
+(NSDictionary *)mj_replacedKeyFromPropertyName{
    
    return @{@"_id":@"id"};
}

-(instancetype)initWithId:(NSString *)_id{
    if (self = [super init]) {
        
        self._id = _id;
    }
    return self;
}
@end
