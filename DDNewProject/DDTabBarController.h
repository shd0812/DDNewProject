//
//  DDTabBarController.h
//  DDNewProject
//
//  Created by shen on 16/6/4.
//  Copyright © 2016年 shen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DDTabBarController : UITabBarController


-(UIViewController*) viewControllerWithTabTitle:(NSString*) title image:(UIImage*)image selectedImage:(UIImage*)selectedImage vcName:(NSString *)vcName;
@end
