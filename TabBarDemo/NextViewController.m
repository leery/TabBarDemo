//
//  NextViewController.m
//  TabBarDemo
//
//  Created by Leery on 15/5/13.
//  Copyright (c) 2015年 Leery. All rights reserved.
//

#import "NextViewController.h"
#import "NextNextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)NextJump{
    NextNextViewController *nextNext = [[NextNextViewController alloc] init];
    [self.navigationController pushViewController:nextNext animated:YES];
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
