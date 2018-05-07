//
//  GAServerUpdateSceneOrderRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/28.
//

#import "GAServerUpdateSceneOrderRequestModel.h"
@implementation GAServerUpdateSceneOrderItem
-(instancetype)initWithsceneId:(NSString *)sceneId{
    if (self = [super init]) {
        
        self.sceneId = sceneId;
    }
    
    return self;
}
@end

@interface GAServerUpdateSceneOrderRequestModel()
@property(nonatomic, strong) NSArray <GAServerUpdateSceneOrderItem *>*sceneIds;
@property(nonatomic, strong) NSArray<NSDictionary<NSString *,NSString *> *> *orderIds;
@end

@implementation GAServerUpdateSceneOrderRequestModel
-(instancetype)initWithScenceIds:(NSArray<NSString *> *)scenceIds{
    
    if (self = [super init]) {
        
        self.sceneIds = [self createItemsWithScenceIds:scenceIds];
        
        self.orderIds = self.hr_keyValues[@"sceneIds"];
    }
    
    return self;
}
-(NSArray<GAServerUpdateSceneOrderItem *> *)createItemsWithScenceIds:(NSArray<NSString *> *)scenceIds{
    
    NSMutableArray * result = [@[] mutableCopy];
    [scenceIds enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        GAServerUpdateSceneOrderItem * item = [[GAServerUpdateSceneOrderItem alloc]initWithsceneId:obj];
        if (item) {
            [result addObject:item];
        }
    }];
    
    return  result;
}
@end
