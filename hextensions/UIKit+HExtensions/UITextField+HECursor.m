//
//  UITextField+HECursor.m
//  hextensions
//
//  Created by How Else on 1/11/19.
//  Copyright © 2019 How Else. All rights reserved.
//

#import "UITextField+HECursor.h"

@implementation UITextField (HECursor)

- (void)he_moveCursorToLocation:(NSInteger)location {
    UITextPosition *position = [self positionFromPosition:self.beginningOfDocument offset:location];
    self.selectedTextRange = position ? [self textRangeFromPosition:position toPosition:position] : nil;
}

@end
