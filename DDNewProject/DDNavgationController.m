//
//  DDNavgationController.m
//  DDNewProject
//
//  Created by shen on 16/6/4.
//  Copyright © 2016年 shen. All rights reserved.
//

#import "DDNavgationController.h"

@interface DDNavgationController ()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@end

@implementation DDNavgationController

@synthesize rootViewControllerName=_rootViewControllerName;

- (void)viewDidLoad {
    [super viewDidLoad];
    __weak DDNavgationController *weakSelf = self;
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.delegate = weakSelf;
    }
    [self removeNavigationBarUnderLineWithView:self.navigationBar];
    // Do any additional setup after loading the view.
}

- (void)removeNavigationBarUnderLineWithView:(UIView *)view {
    for (UIView *subview in view.subviews) {
        if ([subview isKindOfClass:[UIImageView class]] && subview.frame.size.height <= 1.0f) {
            [subview removeFromSuperview];
            return;
        }
        [self removeNavigationBarUnderLineWithView:subview];
    }
}
//-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
//    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]&&animated == YES) {
//        self.interactivePopGestureRecognizer.enabled = NO;
//    }
//    [self pushViewController:viewController animated:animated];
//}

- (NSArray *)popToRootViewControllerAnimated:(BOOL)animated
{
    if ( [self respondsToSelector:@selector(interactivePopGestureRecognizer)] && animated == YES )
    {
        self.interactivePopGestureRecognizer.enabled = NO;
    }
    
    return  [super popToRootViewControllerAnimated:animated];
    
}
- (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if( [self respondsToSelector:@selector(interactivePopGestureRecognizer)] )
    {
        self.interactivePopGestureRecognizer.enabled = NO; }
    return [super popToViewController:viewController animated:animated];
}
#pragma mark UINavigationControllerDelegate

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animate
{
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)])
    {
        self.interactivePopGestureRecognizer.enabled = YES;
    }
}

-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    if ( gestureRecognizer == self.interactivePopGestureRecognizer )
    {
        if ( self.viewControllers.count < 2 || self.visibleViewController == [self.viewControllers objectAtIndex:0] )
        {
            return NO;
        }
    }
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)prefersStatusBarHidden
{
    return NO;
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
