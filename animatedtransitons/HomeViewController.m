//
//  HomeViewController.m
//  animatedtransitons
//
/*
 * ┏┓　　　┏┓
 * ┏┛┻━━━┛┻━━━━┓
 * ┃　         ┃
 * ┃　　　━　　　┃
 * ┃　┳┛　┗┳　  ┃
 * ┃　　　　　　 ┃
 * ┃　　　┻　　　┃
 * ┃　　　　　　 ┃
 * ┗━┓　　　┏━━━┛
 *   ┃　　　┃   神兽保佑
 *   ┃　　　┃   代码无BUG！
 *   ┃　　　┗━━━┓
 *   ┃　　　　　 ┣┓
 *   ┃　　　　　┏┛
 *   ┗┓┓┏━┳┓┏┛
 *    ┃┫┫ ┃┫┫
 *    ┗┻┛ ┗┻┛
 *
 */

//  Created by cloay on 15/9/23.
//  Copyright © 2015年 Cloay. All rights reserved.
//

#import "HomeViewController.h"
#import "DetailViewController.h"

#import "FlipTransition.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.navigationController.delegate = self;
    self.title = @"AnimatedTransitions";
    
    UIButton *bbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [bbtn setFrame:CGRectMake(30, 180, self.view.frame.size.width - 60, 40)];
    [bbtn setTitleColor:[UIColor colorWithRed:76.f/255 green:184.f/255 blue:73.f/255 alpha:1.f] forState:UIControlStateNormal];
    [bbtn setTitle:@"BouncePresentTransition" forState:UIControlStateNormal];
    [bbtn addTarget:self action:@selector(btnDidTaped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bbtn];
    
    UIButton *fbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [fbtn setFrame:CGRectMake(30, 260, self.view.frame.size.width - 60, 40)];
    [fbtn setTitleColor:[UIColor colorWithRed:76.f/255 green:184.f/255 blue:73.f/255 alpha:1.f] forState:UIControlStateNormal];
    [fbtn setTitle:@"FlipTransition" forState:UIControlStateNormal];
    [fbtn addTarget:self action:@selector(btnDidTaped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:fbtn];
    
    UIButton *sbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [sbtn setFrame:CGRectMake(30, 320, self.view.frame.size.width - 60, 40)];
    [sbtn setTitleColor:[UIColor colorWithRed:76.f/255 green:184.f/255 blue:73.f/255 alpha:1.f] forState:UIControlStateNormal];
    [sbtn setTitle:@"ShrinkDismissTransition" forState:UIControlStateNormal];
    [sbtn addTarget:self action:@selector(btnDidTaped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sbtn];
}

- (void)btnDidTaped:(UIButton *)btn{
    self.transitionClassName = [btn titleForState:UIControlStateNormal];
    NSLog(@"transitionClassName = %@", self.transitionClassName);
    DetailViewController *detailVc = [[DetailViewController alloc] init];
    detailVc.title = self.transitionClassName;
    
    [self.navigationController pushViewController:detailVc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UINavigationControllerDelegate

- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                  animationControllerForOperation:(UINavigationControllerOperation)operation
                                               fromViewController:(UIViewController *)fromVC
                                                 toViewController:(UIViewController *)toVC
{
    self.animator = nil;
    
    if (NSClassFromString(self.transitionClassName)) {
        
        Class aClass = NSClassFromString(self.transitionClassName);
        self.animator = [[aClass alloc] init];
    }
    
    if (self.animator) {
        if ([self.animator isKindOfClass:[FlipTransition class]]) {
            
            [self.animator setReverse:(operation == UINavigationControllerOperationPop)];
        }
    }
    
    return self.animator;
}

@end
