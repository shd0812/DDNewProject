//
//  DDTabBarController.m
//  DDNewProject
//
//  Created by shen on 16/6/4.
//  Copyright © 2016年 shen. All rights reserved.
//



#import "DDTabBarController.h"
#import "DDNavgationController.h"
@interface DDTabBarController ()

@end

@implementation DDTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    
    // 设置标签栏不穿透
    self.tabBar.translucent = YES;
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //self.navigationController.navigationBarHidden = YES;
    [[UITabBar appearance] setTintColor:[UIColor blackColor] ];
    //    [[UITabBar appearance] setSelectedImageTintColor: COLOR_REDASSIS_TEXT];
    //[[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:COLOR_NAV_BAR,NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    
    //[[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:COLOR_REDASSIS_TEXT,NSForegroundColorAttributeName, nil]forState:UIControlStateSelected];
    
    
}

-(UIViewController*) viewControllerWithTabTitle:(NSString*) title image:(UIImage*)image selectedImage:(UIImage*)selectedImage vcName:(NSString *)vcName
{
    UIViewController *vc = [[NSClassFromString(vcName) alloc] init];
    
    DDNavgationController *nav = [[DDNavgationController alloc] initWithRootViewController:vc];
    nav.rootViewControllerName = vcName;
    
    nav.navigationBar.translucent = NO; // 设置导航栏不穿透
    //nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:image tag:0];
    
    
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:image selectedImage:selectedImage];
    vc.tabBarItem.imageInsets = UIEdgeInsetsMake(-4, 0, 4, 0);
    vc.title = title;
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:RGB(54, 185,175),NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];

    return nav;
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
