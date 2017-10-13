//
//  UIImage+CALayer.h
//  hextensions-example
//
//  Created by How Else on 10/13/17.
//  Copyright © 2017 How Else. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (CALayer)

+ (nullable UIImage *)he_imageFromLayer:(CALayer *)layer;

@end

NS_ASSUME_NONNULL_END
