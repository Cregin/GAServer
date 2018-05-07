//
//  GAServerGetPm25DataByMacRequest.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import <GAServer/GAServer.h>

@interface GAServerGetPm25DataByMacRequest : GAServerRequest
    -(instancetype)initWithdeviceMac:(NSString *)deviceMac;
    
    @end
