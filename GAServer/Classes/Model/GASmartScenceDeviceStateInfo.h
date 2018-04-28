//
//  GASmartScenceDeviceStateInfo.h
//  AFNetworking
//
//  Created by 郑振兴 on 2018/4/27.
//

#import <Foundation/Foundation.h>
#import "GAServerConst.h"
/*
 @param model 设定的模式
 ***************************************************
 空调定义如下:
 1：制冷 2:制热 3:除湿 4：送风 5：PMV（推荐值）
 空气魔方定义如下:
 1：智能 2:净化 3:加湿 4：加湿净化 5：除湿 6：除湿净化7：送风
 净化魔方定义如下：
 1：高风 2:中风 3:低风 4：睡眠 5：自动（推荐值） 6：急速
 ***************************************************
 @param temperature 设置的温度 默认26，直接传数值
 @param humidity 湿度 自动场合：传 AUTO，其他传数字
 @param windSpeed 风速
 ***************************************************
 空调定义如下:
 1：高风 2：中风 3：低风 4：自动风（默认）
 空气魔方定义如下:
 1：强劲 2：高风3：中风4：低风 5：静音6：自动风（推荐值）
 ***************************************************
 @param deviceSwitch 设备设定的开关机 0：关机 1：开机
 */

@interface GASmartScenceDeviceStateInfo : NSObject
/** 模式 **/
@property(nonatomic,copy) NSString *productFunction;
/** 温度 **/
@property(nonatomic,copy) NSString *temperature;
/** 湿度 **/
@property(nonatomic,copy) NSString *humidity;
/** 风速 **/
@property(nonatomic,copy) NSString *windSpeed;
/** 设备开关机状态 **/
@property(nonatomic,copy) NSString *switchState;
-(instancetype)initWithproductFunction:(NSString *)productFunction temperature:(NSString *)temperature humidity:(NSString *)humidity windSpeed:(NSString *)windSpeed switchState:(NSString *)switchState;
@end
