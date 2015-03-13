//
//  UIImage+UIColor.m
//  hextensions
//
//  Created by How Else on 3/13/15.
//  Copyright (c) 2015 How Else. All rights reserved.
//

#import "UIImage+UIColor.h"

@implementation UIImage (UIColor)

+ (UIImage *)imageWithColor:(UIColor *)color
{
    return [self imageWithColor:color size:CGSizeMake(1.0, 1.0)];
}

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGRect rect = { .origin = CGPointZero, .size = size };
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size cornerRadius:(CGFloat)cornerRadius
{
    CGRect rect = { .origin = CGPointZero, .size = size };
    
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
    roundedRect.lineWidth = 0.0;
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    
    [color setFill];
    [roundedRect fill];
    [roundedRect stroke];
    [roundedRect addClip];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)resizableImageWithColor:(UIColor *)color cornerRadius:(CGFloat)cornerRadius
{
    CGFloat minEdgeSize = cornerRadius * 2 + 1.0;
    
    UIImage *image = [self imageWithColor:color size:CGSizeMake(minEdgeSize, minEdgeSize) cornerRadius:cornerRadius];
    
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(cornerRadius, cornerRadius, cornerRadius, cornerRadius)];
}

@end
