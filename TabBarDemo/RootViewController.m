//
//  RootViewController.m
//  TabBarDemo
//
//  Created by Leery on 15/5/13.
//  Copyright (c) 2015年 Leery. All rights reserved.
//

#import "RootViewController.h"
#import "AppDelegate.h"
#import "LoginViewController.h"
#import "CustomTabBarController.h"

@interface RootViewController ()<LoginViewControllerDelegate>

@property (nonatomic ,weak) AppDelegate *m_appDelegate;
@property (nonatomic ,weak) UIWindow *m_window;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self getProperty];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self enterLoginViewController];
}

- (void)enterLoginViewController
{
    NSLog(@"跳转登录界面");
    LoginViewController *lvc = [[LoginViewController alloc] init];
    lvc.m_delegate = self;
    //NSLog(@"self.m_delegate=%@",lvc.m_delegate);
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:lvc];
    self.m_window.rootViewController = nav;//至此rootViewController 引用计数为0
}

#pragma mark - LoginViewControllerDelegate
- (void)loginSuccess
{
    NSLog(@"button Presss in Login");
    [self gotoHomeViewController];
}

- (void)gotoHomeViewController
{
    CustomTabBarController *hvc = [[CustomTabBarController alloc] init];
    self.m_window.rootViewController = hvc;
}

+ (id)sharedAppDelegateInstance
{
    static RootViewController *rootControl = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        rootControl = [[[self class] alloc] init];
    });
    return rootControl;
}

- (void)getProperty
{
    self.m_appDelegate = [[UIApplication sharedApplication] delegate];
    self.m_window = self.m_appDelegate.window;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
