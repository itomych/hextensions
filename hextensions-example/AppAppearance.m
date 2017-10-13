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
    CAGradientLayer *gradientLayer = [[CAGradientLayer alloc] init];
    gradientLayer.colors = @[ (id)[UIColor orangeColor].CGColor, (id)[UIColor redColor].CGColor ];
    gradientLayer.startPoint = CGPointMake(0.0, 0.5);
    gradientLayer.endPoint = CGPointMake(1.0, 0.5);
    gradientLayer.frame = CGRectMake(0.0, 0.0, UIScreen.mainScreen.bounds.size.width, 10.0);
    
    UIImage *shadowImage  = [UIImage he_imageWithColor:[UIColor redColor]];
    UIImage *backgroundImage = [UIImage he_imageWithColor:[UIColor orangeColor]];
    UIImage *patternImage = [UIImage he_imageFromLayer:gradientLayer];
    
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    
    [navigationBar setShadowImage:shadowImage];
    [navigationBar setBackgroundImage:backgroundImage forBarMetrics:UIBarMetricsDefault];
    [UIToolbar appearance].barTintColor = [UIColor colorWithPatternImage:patternImage];
}

@end
