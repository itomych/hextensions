//
//  UITableViewCell+IOS8DetailCellFix.m
//  hextensions
//
//  Created by How Else on 2/9/15.
//  Copyright (c) 2015 itomych studio. All rights reserved.
//

#import "UITableViewCell+IOS8DetailCellFix.h"

/*
 * In iOS8 GM (and beta5, unsure about earlier), detail-type UITableViewCells (the
 * ones which have a detailTextLabel) will remove that label from the view hierarchy if the
 * text value is nil.  It will get re-added during the cell's layoutSubviews method, but...
 * this happens just too late for the label itself to get laid out, and its size remains
 * zero.  When a subsequent layout call happens (e.g. a rotate, or scrolling the cells offscreen
 * and back) then things get fixed back up.  However the initial display has completely blank
 * values.  To fix this, we forcibly re-add it as a subview in both awakeFromNib and prepareForReuse.
 * Both places are necessary; one if the xib/storyboard has a nil value to begin with, and
 * the other if code explicitly sets it to nil during one layout cycle then sets it back).
 * Bug filed with Apple; Radar 18344249 .
 *
 * This worked fine in iOS7.
 *
 * http://stackoverflow.com/a/25901083
 */

#import <objc/runtime.h>

@implementation UITableViewCell (IOS8DetailCellFix)

+ (void)load
{
    /*
     * It appears this bug is fixed in iOS9.
     */
    if ([UIDevice currentDevice].systemVersion.intValue == 8)
    {
        Method original = class_getInstanceMethod(self, @selector(layoutSubviews));
        Method replace  = class_getInstanceMethod(self, @selector(he_detailfix_layoutSubviews));
        method_exchangeImplementations(original, replace);
    }
}

- (void)he_detailfix_layoutSubviews
{
    /*
     * UITableViewCell seems to return nil if the cell type does not have a detail.
     * If it returns non-nil, force add it as a contentView subview so that it gets
     * view layout processing at the right times.
     */
    UILabel *detailLabel = self.detailTextLabel;
    if (detailLabel != nil && detailLabel.superview == nil)
    {
        [self.contentView addSubview:detailLabel];
    }
    
    [self he_detailfix_layoutSubviews];
}

@end
