//
//  NSURLComponents+HEURLQueryItem.h
//  hextensions
//
//  Created by How Else on 1/22/19.
//  Copyright © 2019 How Else. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSURLComponents (HEURLQueryItem)

- (nullable NSString *)he_queryItemValueForName:(NSString *)name API_AVAILABLE(macos(10.10), ios(8.0), watchos(2.0), tvos(9.0));

@end

NS_ASSUME_NONNULL_END
