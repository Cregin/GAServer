//
//  Header.h
//  Pods
//
//  Created by 郑振兴 on 2018/4/27.
//

#ifndef Header_h
#define Header_h

typedef NS_ENUM(NSUInteger, GAServerSmartSceneDeviceType) {
    GAServerSmartSceneDeviceTypeAirConition = 0,//空调
    GAServerSmartSceneDeviceTypeAirMagic,//空气魔方
    GAServerSmartSceneDeviceTypePurMagic,//净化魔方
};

typedef NS_ENUM(NSUInteger, GAServerSmartSceneDeviceSwitchState) {
    GAServerSmartSceneDeviceSwitchStateOFF = 0,//关机
    GAServerSmartSceneDeviceSwitchStateON//开机
};
/*1：制冷 2:制热 3:除湿 4：送风 5：PMV（推荐值）*/
typedef NS_ENUM(NSUInteger, GAServerSmartSceneACModel) {
    GAServerSmartSceneACModelRefrigeration = 1,//制冷
    GAServerSmartSceneACModelHeating,//制热
    GAServerSmartSceneACModelDehumidification,//除湿
    GAServerSmartSceneACModelBlowingIn,//送风
    GAServerSmartSceneACModelPMV,//PMV
};
/*空气魔方定义如下:
 1：智能 2:净化 3:加湿 4：加湿净化 5：除湿 6：除湿净化7：送风
 */
typedef NS_ENUM(NSUInteger, GAServerSmartSceneAMModel) {
    GAServerSmartSceneAMModelWisdom = 1,//智能
    GAServerSmartSceneAMModelPurify,//净化
    GAServerSmartSceneAMModelHumidification,//加湿
    GAServerSmartSceneAMModelHumidPurify,//加湿净化
    GAServerSmartSceneAMModelDehumidification,//除湿
    GAServerSmartSceneAMModelDehumidificationPurify,//除湿净化
    GAServerSmartSceneAMModelBlowingIn//送风
};
/*净化魔方定义如下：
 1：高风 2:中风 3:低风 4：睡眠 5：自动（推荐值） 6：急速*/
typedef NS_ENUM(NSUInteger, GAServerSmartScenePMModel) {
   GAServerSmartScenePMModelHigh_wind = 1,//高风
    GAServerSmartScenePMModelMid_wind,//中风
    GAServerSmartScenePMModelLow_wind,//低风
    GAServerSmartScenePMModelSleep,//睡眠
    GAServerSmartScenePMModelAuto,//自动
    GAServerSmartScenePMModelTopSpeed//极速
};
#endif /* Header_h */
