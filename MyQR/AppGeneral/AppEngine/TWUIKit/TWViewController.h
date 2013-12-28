//
//  ViewController.h
//  TWApp
//
//  Created by line0 on 13-7-6.
//  Copyright (c) 2013年 makeLaugh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TWViewController : UIViewController
@property (strong, nonatomic) UIView    *statusBar;

@property (strong, nonatomic, readonly) UIButton *backBtn;


- (UIView *)errorView;
- (UIView *)loadingView;

- (void)showLoadingAnimated:(BOOL)animated;
- (void)hideLoadingViewAnimated:(BOOL)animated;

- (void)showErrorViewAnimated:(BOOL)animated;
- (void)hideErrorViewAnimated:(BOOL)animated;


@end
