//
//  UIView+HEHairline.m
//  hextensions
//
//  Created by How Else on 9/1/17.
//  Copyright © 2017 How Else. All rights reserved.
//

#import "UIView+HEHairline.h"

@implementation UIView (HEHairline)

- (UIImageView *)hairlineImageView {
    if ([self isKindOfClass:[UIImageView class]]) {
        if (self.bounds.size.height <= 1.0) {
            return (UIImageView *)self;
        }
    }
    for (UIView *view in self.subviews) {
        UIImageView *hairlineImageView = [view hairlineImageView];
        if (hairlineImageView) {
            return hairlineImageView;
        }
    }
    return nil;
}

@end
