//
//  HomeViewController.h
//  animatedtransitons
//
//  Created by cloay on 15/9/23.
//  Copyright © 2015年 Cloay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController<UINavigationControllerDelegate>

@property (nonatomic, strong) NSString *transitionClassName;
@property (nonatomic, strong) id animator;

@end
