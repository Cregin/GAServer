//
//  GAServerViewController.m
//  GAServer
//
//  Created by wowbby on 04/27/2018.
//  Copyright (c) 2018 wowbby. All rights reserved.
//

#import "GAServerViewController.h"
#import <GAServer/GAServer.h>
@interface GAServerViewController ()

@end

@implementation GAServerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    GAServerUserSmartSenceRequest * request = [[GAServerUserSmartSenceRequest alloc]initWithUserId:@"1231231"];
    
    [request startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    }];
    
    GAServerSwitchSenceRequest * swR = [[GAServerSwitchSenceRequest alloc] initWithState:1 instanceId:@"123123"];
    
    [swR startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    }];
    
    GASmartScenceDeviceStateInfo * info = [[GASmartScenceDeviceStateInfo alloc]initWithproductFunction:@"1" temperature:@"25" humidity:@"30" windSpeed:@"1" switchState:@"0"];
    
    GAServerUpdateDeviceSetingRequest* addR = [[GAServerUpdateDeviceSetingRequest alloc]initWithinstanceId:@"0000" userId:@"1213" mac:@"12313" deviceType:@"1" deviceSwitch:@"0" wifiType:@"12313123" deviceStateInfo:info classId:@"12313"];
    
    [addR startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    }];
    
    GAServerGetScenceDeviceListRequest * getDR = [[GAServerGetScenceDeviceListRequest alloc]initWithsceneId:@"12313123"];
    [getDR startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    }];
    
    GAServerDeleteScenceDeviceRequest * delR = [[GAServerDeleteScenceDeviceRequest alloc] initWithId:@"13123"];
    
    [delR startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    }];
    
    GAServerExecuteScenceRequest * exeC = [[GAServerExecuteScenceRequest alloc]initWithsceneId:@"12313"];
    [exeC startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    }];
    
    GASmartScenceDeviceStateInfo * info1 = [[GASmartScenceDeviceStateInfo alloc]initWithproductFunction:@"1" temperature:@"25" humidity:@"30" windSpeed:@"1" switchState:@"0"];
    
    GAServerAddDeviceToScenceRequestModel* model = [[GAServerAddDeviceToScenceRequestModel alloc]initWithinstanceId:@"0000" userId:@"1213" mac:@"12313" deviceType:@"1" deviceSwitch:@"0" wifiType:@"12313123" deviceStateInfo:info classId:@"12313"];
    
    GAServerCustomRequest * customR = [[GAServerCustomRequest alloc]initWithsceneDesc:@"123123" userId:@"123123" sceneName:@"场景名称" deviceOption:model];
    
    [customR startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    }];
    
    GAServerDeleteCustomScenceRequest * dc = [[GAServerDeleteCustomScenceRequest alloc] initWithsceneIdsArray:@[@"20180427125202109948",@"20180427125202109948,20180427125202109949"]];

    [dc startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    }];
    
    GAServerEditSceneRequest * ed = [[GAServerEditSceneRequest alloc] initWithsceneId:@"12313" sceneName:@"123123" sceneDesc:@"12313"];
    
    [ed startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    }];
    
    GAServerUpdateSceneOrderRequest * order = [[GAServerUpdateSceneOrderRequest alloc]initWithScenceIds:@[@"12313",@"12313"]];
    
    [order startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        
    }];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
