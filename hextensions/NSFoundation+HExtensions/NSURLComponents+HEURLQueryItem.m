//
//  NSURLComponents+HEURLQueryItem.m
//  hextensions
//
//  Created by How Else on 1/22/19.
//  Copyright © 2019 How Else. All rights reserved.
//

#import "NSURLComponents+HEURLQueryItem.h"

@implementation NSURLComponents (HEURLQueryItem)

- (NSString *)he_queryItemValueForName:(NSString *)name {
    for (NSURLQueryItem *item in self.queryItems) {
        if ([item.name isEqualToString:name]) {
            return item.value;
        }
    }
    return nil;
}

@end
