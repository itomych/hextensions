//
//  NSDictionary+Networking.m
//  hextensions
//
//  Created by How Else on 11/11/14.
//  Copyright (c) 2014 How Else. All rights reserved.
//

#import "NSDictionary+Networking.h"

@implementation NSDictionary (Networking)

- (id)he_objectForKey:(id)aKey
{
    id object = [self objectForKey:aKey];
    if ([object isKindOfClass:[NSNull class]]) {
        object = nil;
    }
    return object;
}

- (NSString *)he_stringObjectForKey:(id)aKey
{
    id object = [self objectForKey:aKey];
    if ([object isKindOfClass:[NSString class]]) {
        return object;
    }
    return nil;
}

- (NSString *)he_stringValueForKey:(id)aKey
{
    id object = [self objectForKey:aKey];
    if ([object isKindOfClass:[NSString class]]) {
        return object;
    } else if ([object respondsToSelector:@selector(stringValue)]) {
        return [object stringValue];
    }
    return nil;
}

- (NSDictionary *)he_dictionaryObjectForKey:(id)aKey
{
    id object = [self objectForKey:aKey];
    if ([object isKindOfClass:[NSDictionary class]]) {
        return object;
    }
    return nil;
}

- (NSArray *)he_arrayObjectForKey:(id)aKey
{
    id object = [self objectForKey:aKey];
    if ([object isKindOfClass:[NSArray class]]) {
        return object;
    }
    return nil;
}
- (NSNumber *)he_numberObjectForKey:(id)aKey
{
    id object = [self objectForKey:aKey];
    if ([object isKindOfClass:[NSNumber class]]) {
        return object;
    }
    return nil;
}

@end
