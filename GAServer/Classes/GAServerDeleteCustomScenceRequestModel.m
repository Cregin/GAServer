//
//  GAServerDeleteCustomScenceRequestModel.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/28.
//

#import "GAServerDeleteCustomScenceRequestModel.h"
#import <MJExtension/MJExtension.h>
@interface GAServerDeleteCustomScenceRequestModel ()
@property(nonatomic, strong) NSArray<NSString *> *sceneIdsArray;
@property(nonatomic, strong) NSString *sceneIds;
@end

@implementation GAServerDeleteCustomScenceRequestModel
-(instancetype)initWithsceneIdsArray:(NSArray<NSString *> *)sceneIdsArray{
    
    if (self = [super init]) {
        self.sceneIdsArray = sceneIdsArray;
        self.sceneIds = [sceneIdsArray componentsJoinedByString:@","];
    }
    
    return self;
}
+(NSArray *)mj_ignoredPropertyNames{
    
    return @[@"sceneIdsArray"];
}
@end
