//
//  UserInfoView.m
//  MyQR
//
//  Created by line0 on 13-12-28.
//  Copyright (c) 2013年 ThreeWater. All rights reserved.
//

#import "UserInfoView.h"

@implementation UserInfoView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:CGRectMake(0, 0, 320, 100)];
    if (self)
    {
        self.backgroundColor = kBlueColor;
        
        CGRect rect = CGRectMake(5, 15, 65, 65);
        self.portraintBtn = [TWButton buttonWithType:UIButtonTypeCustom];
        self.portraintBtn.frame = rect;
        self.portraintBtn.backgroundColor = kRedColor;
        self.portraintBtn.radius = self.portraintBtn.width/2;
        [self addSubview:self.portraintBtn];
        
        rect = CGRectMake(self.portraintBtn.right + 25, 15, 100, 30);
        self.usernameLbl = [[TWLabel alloc] initWithFrame:rect];
        self.usernameLbl.text = @"三水";
        [self addSubview:self.usernameLbl];
        
        rect = CGRectMake(self.portraintBtn.right + 10, self.usernameLbl.bottom + 5, 220, 25);
        self.signLbl = [[TWLabel alloc] initWithFrame:rect];
        self.signLbl.text = @"我爱我的因我觉得欢喜";
        [self addSubview:self.signLbl];
    }
    return self;
}


@end
