//
//  UIImage+CALayer.m
//  hextensions-example
//
//  Created by How Else on 10/13/17.
//  Copyright © 2017 How Else. All rights reserved.
//

#import "UIImage+CALayer.h"

@implementation UIImage (CALayer)

+ (UIImage *)he_imageFromLayer:(CALayer *)layer {
    UIGraphicsBeginImageContextWithOptions(layer.bounds.size, layer.isOpaque, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    if (context == NULL) {
        return nil;
    }
    [layer renderInContext:context];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
