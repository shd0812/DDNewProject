//
//  MainTabBarViewController.m
//  DDNewProject
//
//  Created by shen on 16/6/5.
//  Copyright © 2016年 shen. All rights reserved.
//

#import "MainTabBarViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTabbar];
    self.viewControllers = [NSArray arrayWithObjects:
                            [self viewControllerWithTabTitle:@"首页" image:[UIImage imageNamed:@"icon_tabbar_homepage"] selectedImage:[UIImage imageNamed:@"icon_tabbar_homepage_selected"]  vcName:@"HomeViewController"],
                            [self viewControllerWithTabTitle:nil image:[UIImage imageNamed:@"icon_tabbar_onsite"] selectedImage:[UIImage imageNamed:@"icon_tabbar_onsite_selected"]  vcName:@"FaXianViewController"],
//                            [self viewControllerWithTabTitle:nil image:[UIImage imageNamed:@"enniu_icon"] selectedImage:[UIImage imageNamed:@"enniu_icon_press"]  vcName:@"EnnSpeechController"],
                            [self viewControllerWithTabTitle:nil image:[UIImage imageNamed:@"icon_tabbar_misc"] selectedImage:[UIImage imageNamed:@"icon_tabbar_misc_selected"] vcName:@"ThirdViewController"],
                            [self viewControllerWithTabTitle:nil image:[UIImage imageNamed:@"icon_tabbar_mine"]  selectedImage:[UIImage imageNamed:@"icon_tabbar_mine_selected"]vcName:@"MyViewController"], nil];
    // Do any additional setup after loading the view.
}

// 设置tabbar样式
- (void)setupTabbar {
    [self.tabBar setBackgroundImage:[[UIImage alloc] init]];
    [self.tabBar setShadowImage:[[UIImage alloc] init]];
    self.tabBar.translucent = YES;
    //
    //    UIView *tabbarBg = [[UIView alloc] initWithFrame:CGRectMake( 0,TABBAR_HEIGHT - CUSTOM_TABBAR_HEIGHT, SCREEN_WIDTH, CUSTOM_TABBAR_HEIGHT)];
    //    tabbarBg.backgroundColor = UIColorFromRGBA(0xffffff, 0.5);
    //    [self.tabBar addSubview:tabbarBg];
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
