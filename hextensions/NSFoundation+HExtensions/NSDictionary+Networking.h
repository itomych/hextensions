//
//  NSDictionary+Networking.h
//  hextensions
//
//  Created by How Else on 11/11/14.
//  Copyright (c) 2014 How Else. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (Networking)

- (nullable id)he_objectForKey:(id)aKey; // returns nil if object is kind of class NSNull

- (nullable NSString *)he_stringObjectForKey:(id)aKey; // returns nil if object is not kind of class NSString

- (nullable NSString *)he_stringValueForKey:(id)aKey; // returns object's string value for key

- (nullable NSDictionary *)he_dictionaryObjectForKey:(id)aKey; // returns nil if object isn't kind of class NSDictionary

- (nullable NSArray *)he_arrayObjectForKey:(id)aKey; // returns nil if object isn't kind of class NSArray

- (nullable NSNumber *)he_numberObjectForKey:(id)aKey; // returns nil if object isn't kind of class NSNumber

@end

NS_ASSUME_NONNULL_END
