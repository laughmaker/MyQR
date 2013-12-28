//
//  MainFunctionView.m
//  MyQR
//
//  Created by line0 on 13-12-28.
//  Copyright (c) 2013年 ThreeWater. All rights reserved.
//

#import "MainFunctionView.h"

@implementation MainFunctionView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:CGRectMake(0, 0, 320, 320)];
    if (self)
    {
        self.backgroundColor = kClearColor;
        
        CGRect rect = CGRectMake(10, 10, 145, 145);
        self.scanQRBtn = [TWButton buttonWithType:UIButtonTypeCustom];
        self.scanQRBtn.frame = rect;
        [self.scanQRBtn setTitle:@"立即扫描" forState:UIControlStateNormal];
        self.scanQRBtn.radius = self.scanQRBtn.width/2;
        [self addSubview:self.scanQRBtn];
        
        rect = CGRectMake(self.scanQRBtn.right + 10, self.scanQRBtn.top, self.scanQRBtn.width, self.scanQRBtn.height);
        self.messageBtn = [TWButton buttonWithType: UIButtonTypeCustom];
        self.messageBtn.frame = rect;
        [self.messageBtn setTitle:@"消息中心" forState:UIControlStateNormal];
        self.messageBtn.radius = self.scanQRBtn.radius;
        [self addSubview:self.messageBtn];
        
        rect = CGRectMake(self.scanQRBtn.left, self.scanQRBtn.bottom + 10, self.scanQRBtn.width, self.scanQRBtn.height);
        self.manageQRBtn = [TWButton buttonWithType:UIButtonTypeCustom];
        self.manageQRBtn.frame = rect;
        [self.manageQRBtn setTitle:@"我的二维码" forState:UIControlStateNormal];
        self.manageQRBtn.radius = self.scanQRBtn.radius;
        [self addSubview:self.manageQRBtn];
    
        rect = CGRectMake(self.scanQRBtn.right + 10, self.manageQRBtn.top, self.scanQRBtn.width, self.scanQRBtn.height);
        self.activityBtn = [TWButton buttonWithType:UIButtonTypeCustom];
        self.activityBtn.frame = rect;
        self.activityBtn.radius = self.scanQRBtn.radius;
        [self.activityBtn setTitle:@"活动中心" forState:UIControlStateNormal];
        [self addSubview:self.activityBtn];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
