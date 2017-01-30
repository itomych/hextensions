//
//  UINavigationController+HExtension.m
//  hextensions
//
//  Created by How Else on 3/12/15.
//  Copyright (c) 2015 How Else. All rights reserved.
//

#import "UINavigationController+HExtension.h"

@implementation UINavigationController (HExtension)

- (UIViewController *)he_rootViewController
{
    return self.viewControllers.firstObject;
}

- (void)he_setTopViewController:(UIViewController *)controller animated:(BOOL)animated
{
    NSMutableArray *viewControllers = [self.viewControllers mutableCopy];
    [viewControllers removeLastObject];
    [viewControllers addObject:controller];
    [self setViewControllers:viewControllers animated:animated];
}

- (void)he_pushViewController:(UIViewController *)viewController fromViewController:(UIViewController *)fromViewController animated:(BOOL)animated
{
    NSMutableArray *viewControllers = [self.viewControllers mutableCopy];
    NSUInteger numberOfControllers = viewControllers.count;
    NSUInteger currentIndex = [viewControllers indexOfObject:fromViewController];
    
    if (currentIndex != NSNotFound && currentIndex < numberOfControllers) {
        NSUInteger nextIndex = currentIndex + 1;
        NSRange range = NSMakeRange(nextIndex, numberOfControllers - nextIndex);
        [viewControllers removeObjectsInRange:range];
    }
    
    [viewControllers addObject:viewController];
    [self setViewControllers:viewControllers animated:animated];
}

@end
