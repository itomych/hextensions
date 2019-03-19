//
//  UITabBarController+HENavigationController.h
//  hextensions
//
//  Created by How Else on 3/19/19.
//  Copyright © 2019 How Else. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITabBarController (HENavigationController)

- (void)he_pushViewController:(UIViewController *)viewController animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
