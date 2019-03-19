//
//  UITabBarController+HENavigationController.m
//  hextensions
//
//  Created by How Else on 3/19/19.
//  Copyright © 2019 How Else. All rights reserved.
//

#import "UITabBarController+HENavigationController.h"

@implementation UITabBarController (HENavigationController)

- (void)he_pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    UINavigationController *navigationController = self.navigationController;
    if (!navigationController) {
        navigationController = self.selectedViewController;
        if (![navigationController isKindOfClass:[UINavigationController class]]) {
            return;
        }
    }
    [navigationController pushViewController:viewController animated:animated];
}

@end
