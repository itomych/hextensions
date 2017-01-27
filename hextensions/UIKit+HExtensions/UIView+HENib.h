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

+ (instancetype)viewFromNib;

+ (instancetype)viewFromNibWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
