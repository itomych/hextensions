//
//  UIView+HENib.h
//  hextensions
//
//  Created by How Else on 1/27/17.
//  Copyright © 2017 How Else. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (HENib)

+ (instancetype)he_viewFromNib;

+ (instancetype)he_viewFromNibWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
