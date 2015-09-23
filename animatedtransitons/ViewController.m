//
//  ViewController.m
//  animatedtransitons
//
//  Created by cloay on 15/9/23.
//  Copyright © 2015年 Cloay. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    HomeViewController *homeVc = [[HomeViewController alloc] init];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:homeVc];
    [self presentViewController:nav animated:NO completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
