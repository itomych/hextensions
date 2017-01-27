//
//  UIView+HENib.m
//  hextensions
//
//  Created by How Else on 1/27/17.
//  Copyright © 2017 How Else. All rights reserved.
//

#import "UIView+HENib.h"

@implementation UIView (HENib)

+ (instancetype)viewFromNib {
    return [self viewFromNibWithName:NSStringFromClass(self)];
}

+ (instancetype)viewFromNibWithName:(NSString *)name {
    UIView *view = [[[NSBundle mainBundle] loadNibNamed:name owner:self options:nil] firstObject];
    NSAssert(view != nil, @"Failed attempt to load view from nib with name %@", name);
    NSAssert([view isKindOfClass:self], @"View %@ is not kind of class %@", view, self);
    return view;
}

@end
