//
//  AppAppearance.m
//  hextensions
//
//  Created by How Else on 3/13/15.
//  Copyright (c) 2015 How Else. All rights reserved.
//

#import "AppAppearance.h"

#import "HExtensions.h"

@implementation AppAppearance

+ (void)initializeDefaultAppearance
{
    UIImage *shadowImage  = [UIImage he_imageWithColor:[UIColor redColor]];
    UIImage *backgroundImage = [UIImage he_imageWithColor:[UIColor orangeColor]];
    
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    
    [navigationBar setShadowImage:shadowImage];
    [navigationBar setBackgroundImage:backgroundImage forBarMetrics:UIBarMetricsDefault];
}

@end
