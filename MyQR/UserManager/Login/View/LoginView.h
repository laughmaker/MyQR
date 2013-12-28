//
//  LoginView.h
//  MyQR
//
//  Created by line0 on 13-12-28.
//  Copyright (c) 2013年 ThreeWater. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginView : UIView
@property (strong, nonatomic) UIView        *contentView;
@property (strong, nonatomic) UITextField   *usernameTF;
@property (strong, nonatomic) UITextField   *passwordTF;
@property (strong, nonatomic) TWButton      *loginBtn;
@property (strong, nonatomic) TWButton      *qqLoginBtn;

@end
