//
//  NSDictionary+Networking.h
//  hextensions
//
//  Created by How Else on 11/11/14.
//  Copyright (c) 2014 How Else. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Networking)

- (id)validObjectForKey:(id)aKey; // returns nil if object is kind of class NSNull

- (NSString *)stringObjectForKey:(id)aKey; // returns nil if object is not kind of class NSString

- (NSString *)stringValueForKey:(id)aKey; // returns object's string value string value for key

- (NSDictionary *)dictionaryObjectForKey:(id)aKey; // returns nil if object isn't kind of class NSDictionary

- (NSArray *)arrayObjectForKey:(id)aKey; // returns nil if object isn't kind of class NSArray

- (NSNumber *)numberObjectForKey:(id)aKey; // returns nil if object isn't kind of class NSNumber

@end
