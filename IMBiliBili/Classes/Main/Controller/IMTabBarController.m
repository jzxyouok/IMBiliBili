//
//  IMTabBarController.m
//  IMBiliBili
//
//  Created by 汤振治 on 16/6/5.
//  Copyright © 2016年 Imitations. All rights reserved.
//

#import "IMTabBarController.h"

#import "IMNavigationController.h"
#import "IMIndexViewController.h"
#import "IMDiscoverViewController.h"
#import "IMAttentionViewController.h"
#import "IMProfileViewController.h"

@interface IMTabBarController ()

@end

@implementation IMTabBarController
#pragma mark - LifeCycle
+ (void)initialize {
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpChildVC:[[IMIndexViewController alloc] init] title:@"首页" image:@"" selectedImage:@""];
    [self setUpChildVC:[[IMIndexViewController alloc] init] title:@"关注" image:@"" selectedImage:@""];
    [self setUpChildVC:[[IMIndexViewController alloc] init] title:@"发现" image:@"" selectedImage:@""];
    [self setUpChildVC:[[IMIndexViewController alloc] init] title:@"我的" image:@"" selectedImage:@""];
    
}
#pragma mark - LazyLoad
#pragma mark - Function
/**
 *  设置 tabBarViewController 的子控制器
 *  使用 UINavigationController 包装
 */
- (void)setUpChildVC:(UIViewController *)viewController title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImg {
    viewController.navigationItem.title = title;
    viewController.tabBarItem.title = title;
    viewController.tabBarItem.image = [UIImage imageNamed:image];
    viewController.tabBarItem.selectedImage = [UIImage imageNamed:selectedImg];
    
    IMNavigationController *naviController = [[IMNavigationController alloc] initWithRootViewController:viewController];
    [self addChildViewController:naviController];
}
#pragma mark - IBOutlet & Action
#pragma mark - Getter & Setter
#pragma mark - Delegate
#pragma mark - DataSource
#pragma mark - NotificationCenter



@end
