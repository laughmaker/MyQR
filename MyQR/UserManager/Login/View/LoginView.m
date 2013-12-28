//
//  LoginView.m
//  MyQR
//
//  Created by line0 on 13-12-28.
//  Copyright (c) 2013年 ThreeWater. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:CGRectMake(0, 0, 320, 240)];
    if (self)
    {
        self.backgroundColor = kClearColor;
        
        CGRect rect = CGRectMake(10, 10, 300, 91);
        self.contentView = [[UIView alloc] initWithFrame:rect];
        self.contentView.backgroundColor = kWhiteColor;
        self.contentView.radius = 4;
        [self addSubview:self.contentView];
        
        rect = CGRectMake(10, 7.5, 280, 30);
        self.usernameTF = [[UITextField alloc] initWithFrame:rect];
        self.usernameTF.placeholder = @"请输入您的用户名";
        self.usernameTF.clearButtonMode = UITextFieldViewModeWhileEditing;
        [self.contentView addSubview:self.usernameTF];
        
        rect = CGRectMake(0, 45, self.contentView.width, 1);
        UIView *line = [[UIView alloc] initWithFrame:rect];
        line.backgroundColor = kAppBgColor;
        [self.contentView addSubview:line];
        
        rect = CGRectMake(self.usernameTF.left, line.bottom + 7.5, self.usernameTF.width, self.usernameTF.height);
        self.passwordTF = [[UITextField alloc] initWithFrame:rect];
        self.passwordTF.placeholder = @"请输入您的密码";
        self.passwordTF.clearButtonMode = UITextFieldViewModeWhileEditing;
        [self.contentView addSubview:self.passwordTF];
        
        rect = CGRectMake(self.contentView.left + 20, self.contentView.bottom + 10, self.contentView.width-40, 35);
        self.loginBtn = [TWButton buttonWithType:UIButtonTypeCustom];
        self.loginBtn.frame = rect;
        self.loginBtn.radius = 4;
        [self.loginBtn setTitle:@"登录" forState:UIControlStateNormal];
        [self addSubview:self.loginBtn];
        
        rect = CGRectMake(self.loginBtn.left, self.loginBtn.bottom + 20, self.loginBtn.width, 35);
        self.qqLoginBtn = [TWButton buttonWithType:UIButtonTypeCustom];
        self.qqLoginBtn.frame = rect;
        self.qqLoginBtn.radius = 4;
        [self.qqLoginBtn setTitle:@"QQ登录" forState:UIControlStateNormal];
        [self addSubview:self.qqLoginBtn];
    }
    return self;
}


@end
