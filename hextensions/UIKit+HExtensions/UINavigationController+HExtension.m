//
//  UINavigationController+HExtension.m
//  hextensions
//
//  Created by How Else on 3/12/15.
//  Copyright (c) 2015 How Else. All rights reserved.
//

#import "UINavigationController+HExtension.h"

@implementation UINavigationController (HExtension)

- (UIViewController *)rootViewController
{
    return [self.viewControllers firstObject];
}

- (void)setTopViewController:(UIViewController *)controller animated:(BOOL)animated
{
    NSMutableArray *viewControllers = [self.viewControllers mutableCopy];
    [viewControllers removeLastObject];
    [viewControllers addObject:controller];
    [self setViewControllers:[viewControllers copy] animated:animated];
}

@end
