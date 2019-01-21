//
//  NSString+HExtensions.h
//  hextensions
//
//  Created by How Else on 1/21/19.
//  Copyright © 2019 How Else. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (HExtensions)

- (NSString *)he_stringByInsertingSeparator:(NSString *)separator withInterval:(NSUInteger)interval;

@end

NS_ASSUME_NONNULL_END
