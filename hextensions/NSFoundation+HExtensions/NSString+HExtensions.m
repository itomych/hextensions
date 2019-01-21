//
//  NSString+HExtensions.m
//  hextensions
//
//  Created by How Else on 1/21/19.
//  Copyright © 2019 How Else. All rights reserved.
//

#import "NSString+HExtensions.h"

@implementation NSString (HExtensions)

- (NSString *)he_stringByInsertingSeparator:(NSString *)separator withInterval:(NSUInteger)interval {
    NSMutableString *string = [[NSMutableString alloc] init];
    NSUInteger location = 0;
    while (location + interval < self.length) {
        NSString *substring = [self substringWithRange:NSMakeRange(location, interval)];
        [string appendString:substring];
        [string appendString:separator];
        location += interval;
    }
    [string appendString:[self substringWithRange:NSMakeRange(location, self.length - location)]];
    return string;
}

@end
