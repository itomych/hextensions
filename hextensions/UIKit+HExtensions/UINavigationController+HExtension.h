//
//  UINavigationController+HExtension.h
//  hextensions
//
//  Created by How Else on 3/12/15.
//  Copyright (c) 2015 How Else. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (HExtension)

@property (nullable, strong, nonatomic, readonly) UIViewController *he_rootViewController;

- (void)he_setTopViewController:(UIViewController *)controller animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
