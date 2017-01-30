//
//  UIImage+UIColor.h
//  hextensions
//
//  Created by How Else on 3/13/15.
//  Copyright (c) 2015 How Else. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UIColor)

+ (UIImage *)he_imageWithColor:(UIColor *)color;

+ (UIImage *)he_imageWithColor:(UIColor *)color size:(CGSize)size;

+ (UIImage *)he_imageWithColor:(UIColor *)color size:(CGSize)size cornerRadius:(CGFloat)cornerRadius;

+ (UIImage *)he_resizableImageWithColor:(UIColor *)color cornerRadius:(CGFloat)cornerRadius;

@end
