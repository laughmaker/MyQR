//
//  LoginVC.m
//  MyQR
//
//  Created by line0 on 13-12-28.
//  Copyright (c) 2013年 ThreeWater. All rights reserved.
//

#import "LoginVC.h"
#import "LoginView.h"
#import "RegisterVC.h"

@interface LoginVC () <UIScrollViewDelegate>
@property (strong, nonatomic) UIScrollView          *scrollView;
@property (strong, nonatomic) LoginView             *loginView;

@end

@implementation LoginVC

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"登录";
    
    TWBarButtonItem *registerItem = [[TWBarButtonItem alloc] initWithSize:CGSizeMake(44, 44) title:@"注册"];
    [registerItem.btn addTarget:self action:@selector(gotoRegister) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = registerItem;
    
    [self addScrollView];
    [self addLoginView];
}

- (void)addScrollView
{
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.backgroundColor = kClearColor;
    self.scrollView.alwaysBounceVertical = YES;
    self.scrollView.delegate = self;
    [self.view addSubview:self.scrollView];
}

- (void)addLoginView
{
    self.loginView = [[LoginView alloc] init];
    [self.scrollView addSubview:self.loginView];
}


#pragma mark - Button Click Event

- (void)gotoRegister
{
    RegisterVC *registerVC = [[RegisterVC alloc] init];
    [self.navigationController pushViewController:registerVC animated:YES];
}


#pragma  mark - UIScrollView Delegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    [self.loginView.usernameTF resignFirstResponder];
    [self.loginView.passwordTF resignFirstResponder];
}

@end
