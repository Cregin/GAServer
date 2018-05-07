//
//  GAServerGetPm25DataByMacRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGetPm25DataByMacRequestModel.h"

@implementation GAServerGetPm25DataByMacRequestModel
-(instancetype)initWithdeviceMac:(NSString *)deviceMac{
    if(self = [super init]){
        
        self.deviceMac = deviceMac;
    }
    return self;
}
    @end
