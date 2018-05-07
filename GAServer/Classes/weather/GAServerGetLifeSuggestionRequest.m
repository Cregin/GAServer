//
//  GAServerGetLifeSuggestionRequest.m
//  AFNetworking
//
//  Created by 郑振兴 on 2018/5/4.
//

#import "GAServerGetLifeSuggestionRequest.h"
#import "GAServerGetLifeSuggestionRequestModel.h"

@interface GAServerGetLifeSuggestionRequest()
    @property(nonatomic, strong) GAServerGetLifeSuggestionRequestModel *requestModel;
@end

@implementation GAServerGetLifeSuggestionRequest
-(instancetype)initWithcityId:(NSString *)cityId{
    if(self =[super init]){
        
        self.requestModel = [[GAServerGetLifeSuggestionRequestModel alloc]initWithcityId:cityId];
    }
    return self;
}
-(NSString *)name{
    
    return @"获取生活提示";
}
- (NSString *)requestUrl
    {
        
        return @"/acquisitionData/open/getLifeSuggestion";
    }
-(YTKRequestMethod)requestMethod{
    
    return YTKRequestMethodPOST;
}
-(NSString *)basePort{
    
    return @"7253";
}
-(NSString *)cdnPort{
    
    return @"7253";
}
-(id)requestArgument{
    
    return self.requestModel.hr_keyValues;
}
-(NSDictionary<NSString *,NSString *> *)requestHeaderFieldValueDictionary{
    
    return [[GAServerHeaderFileds shareInstance] hr_HeaderFilesWithUWSRequest:self];
}
@end
