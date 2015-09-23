//
//  DetailViewController.m
//  animatedtransitons
//
//  Created by cloay on 15/9/23.
//  Copyright © 2015年 Cloay. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor colorWithRed:76.f/255 green:184.f/255 blue:73.f/255 alpha:1.f]];
    
    
    UILabel *desLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 180, self.view.frame.size.width, 30)];
    [desLabel setTextColor:[UIColor whiteColor]];
    
    [desLabel setTextAlignment:NSTextAlignmentCenter];
    [desLabel setFont:[UIFont systemFontOfSize:24]];
    [desLabel setText:self.title];
    [self.view addSubview:desLabel];
    
    
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
