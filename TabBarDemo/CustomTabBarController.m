//
//  CustomTabBarController.m
//  TabBarDemo
//
//  Created by Leery on 15/5/13.
//  Copyright (c) 2015年 Leery. All rights reserved.
//

#import "CustomTabBarController.h"
#import "MainViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface CustomTabBarController ()

@end

@implementation CustomTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self createControllers];
}

- (void)createControllers
{
    MainViewController *mvc = [[MainViewController alloc] init];
    UINavigationController *mvcNav = [[UINavigationController alloc] initWithRootViewController:mvc];
    mvc.title = @"主页";
    
    FirstViewController *fvc = [[FirstViewController alloc] init];
    UINavigationController *firstNav = [[UINavigationController alloc] initWithRootViewController:fvc];
    fvc.title = @"第一";
    
    SecondViewController *svc = [[SecondViewController alloc] init];
    UINavigationController *secondNav = [[UINavigationController alloc] initWithRootViewController:svc];
    svc.title = @"第二";
    
    ThirdViewController *tvc = [[ThirdViewController alloc] init];
    UINavigationController *thirdNav = [[UINavigationController alloc] initWithRootViewController:tvc];
    tvc.title = @"第三";
    
    NSArray *arr = @[mvcNav,firstNav,secondNav,thirdNav];
    self.viewControllers = arr;
    
    self.tabBar.tintColor = [UIColor redColor];
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
