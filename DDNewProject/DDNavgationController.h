//
//  DDNavgationController.h
//  DDNewProject
//
//  Created by shen on 16/6/4.
//  Copyright © 2016年 shen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DDNavgationController : UINavigationController

@property (nonatomic,strong) NSString *rootViewControllerName;  //保存rootvc的名称，来判断是否登录检测

@end
