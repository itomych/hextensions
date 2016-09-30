//
//  NSDictionary+Networking.m
//  hextensions
//
//  Created by How Else on 11/11/14.
//  Copyright (c) 2014 How Else. All rights reserved.
//

#import "NSDictionary+Networking.h"

@implementation NSDictionary (Networking)

- (id)validObjectForKey:(id)aKey
{
    id object = [self objectForKey:aKey];
    if ([object isKindOfClass:[NSNull class]]) {
        object = nil;
    }
    return object;
}

- (NSString *)stringObjectForKey:(id)aKey
{
    id object = [self objectForKey:aKey];
    if ([object isKindOfClass:[NSString class]]) {
        return object;
    }
    return nil;
}

- (NSString *)stringValueForKey:(id)aKey
{
    id object = [self objectForKey:aKey];
    if ([object isKindOfClass:[NSString class]]) {
        return object;
    } else if ([object respondsToSelector:@selector(stringValue)]) {
        return [object stringValue];
    }
    return nil;
}

- (NSDictionary *)dictionaryObjectForKey:(id)aKey
{
    id object = [self objectForKey:aKey];
    if ([object isKindOfClass:[NSDictionary class]]) {
        return object;
    }
    return nil;
}

- (NSArray *)arrayObjectForKey:(id)aKey
{
    id object = [self objectForKey:aKey];
    if ([object isKindOfClass:[NSArray class]]) {
        return object;
    }
    return nil;
}
- (NSNumber *)numberObjectForKey:(id)aKey
{
    id object = [self objectForKey:aKey];
    if ([object isKindOfClass:[NSNumber class]]) {
        return object;
    }
    return nil;
}

@end
