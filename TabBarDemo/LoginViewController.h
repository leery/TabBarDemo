//
//  LoginViewController.h
//  TabBarDemo
//
//  Created by Leery on 15/5/13.
//  Copyright (c) 2015年 Leery. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginViewControllerDelegate<NSObject>

- (void)loginSuccess;

@end

@interface LoginViewController : UIViewController

@property (nonatomic,weak) id <LoginViewControllerDelegate> m_delegate;

@end
