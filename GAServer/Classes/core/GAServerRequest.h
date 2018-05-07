//
//  GAServerRequest.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <HRNetwork/HRNetwork.h>

@interface GAServerRequest : HRBaseRequest
@property(nonatomic, strong) NSString *basePort;
@property(nonatomic, strong) NSString *cdnPort;
@property (nonatomic, strong) NSString *contentType;
@end
