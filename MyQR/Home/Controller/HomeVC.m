//
//  HomeVC.m
//  MyQR
//
//  Created by line0 on 13-12-28.
//  Copyright (c) 2013年 ThreeWater. All rights reserved.
//

#import "HomeVC.h"
#import "UserInfoView.h"
#import "MainFunctionView.h"
#import "LoginVC.h"
#import "ScanQRVC.h"
#import "MessageCenterVC.h"
#import "QRManagerVC.h"
#import "ActivityCenterVC.h"

@interface HomeVC ()
@property (strong, nonatomic) UIScrollView          *scrollView;
@property (strong, nonatomic) UserInfoView          *userInfoView;
@property (strong, nonatomic) MainFunctionView      *mainFunctionView;

@end

@implementation HomeVC

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"首页";

    [self addScrollView];
    [self addUserInfoView];
    [self addMainFunctionView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    self.navigationController.navigationBarHidden = NO;
}

- (void)addScrollView
{
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.backgroundColor = kClearColor;
    self.scrollView.alwaysBounceVertical = YES;
    [self.view addSubview:self.scrollView];
}

- (void)addUserInfoView
{
    self.userInfoView = [[UserInfoView alloc] init];
    [self.userInfoView.portraintBtn addTarget:self action:@selector(gotoLogin) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview:self.userInfoView];
}

- (void)addMainFunctionView
{
    self.mainFunctionView = [[MainFunctionView alloc] init];
    self.mainFunctionView.top = self.userInfoView.bottom + 20;
    [self.mainFunctionView.scanQRBtn addTarget:self action:@selector(gotoScanQR) forControlEvents:UIControlEventTouchUpInside];
    [self.mainFunctionView.messageBtn addTarget:self action:@selector(gotoMessageCenter) forControlEvents:UIControlEventTouchUpInside];
    [self.mainFunctionView.manageQRBtn addTarget:self action:@selector(gotoQRManager) forControlEvents:UIControlEventTouchUpInside];
    [self.mainFunctionView.activityBtn addTarget:self action:@selector(gotoActivityCenter) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview:self.mainFunctionView];
}


#pragma mark - Button Click Event

- (void)gotoLogin
{
    LoginVC *loginVC = [[LoginVC alloc] init];
    [self.navigationController pushViewController:loginVC animated:YES];
}

- (void)gotoScanQR
{
    ScanQRVC *scanQRVC = [[ScanQRVC alloc] init];
    [self.navigationController pushViewController:scanQRVC animated:YES];
}

- (void)gotoMessageCenter
{
    MessageCenterVC *messageCenterVC = [[MessageCenterVC alloc] init];
    [self.navigationController pushViewController:messageCenterVC animated:YES];
}

- (void)gotoQRManager
{
    QRManagerVC *qrManagerVC = [[QRManagerVC alloc] init];
    [self.navigationController pushViewController:qrManagerVC animated:YES];
}

- (void)gotoActivityCenter
{
    ActivityCenterVC *activityCenter = [[ActivityCenterVC alloc] init];
    [self.navigationController pushViewController:activityCenter animated:YES];
}



@end
