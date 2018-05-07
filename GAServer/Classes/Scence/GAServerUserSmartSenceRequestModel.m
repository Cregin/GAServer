//
//  GAUserSmartSenceRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import "GAServerUserSmartSenceRequestModel.h"

@implementation GAServerUserSmartSenceRequestModel
-(instancetype)initWithUserId:(NSString *)userId{
    if (self = [super init]) {
        
        self.userId = userId;
    }
    
    return self;
}
@end
