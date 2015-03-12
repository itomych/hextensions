//
//  UINavigationController+HExtension.h
//  hextensions
//
//  Created by How Else on 3/12/15.
//  Copyright (c) 2015 How Else. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (HExtension)

@property (strong, nonatomic, readonly) UIViewController *rootViewController;

- (void)setTopViewController:(UIViewController *)controller animated:(BOOL)animated;

@end
