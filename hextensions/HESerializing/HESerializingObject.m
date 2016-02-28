//
//  HESerializingObject.m
//  hextensions
//
//  Created by How Else on 2/27/16.
//  Copyright © 2016 How Else. All rights reserved.
//

#import "HESerializingObject.h"

@interface HESerializingObject ()

@property (nonatomic, copy, readwrite) id attributes;

@end

@implementation HESerializingObject

- (instancetype)initWithAttributes:(id)attributes
{
    self = [self init];
    if (self) {
        self.attributes = attributes;
    }
    return self;
}

+ (instancetype)objectWithAttributes:(id)attributes
{
    HESerializingObject *object = nil;
    if (attributes) {
        object = [[self alloc] initWithAttributes:attributes];
    }
    return object;
}

+ (NSArray *)objectsWithAttributes:(id)attributes
{
    NSArray *objects = nil;
    if ([attributes isKindOfClass:[NSArray class]]) {
        NSUInteger capacity = [attributes count];
        NSMutableArray *buffer = [[NSMutableArray alloc] initWithCapacity:capacity];
        for (id objectAttributes in attributes) {
            HESerializingObject *object = [[self alloc] initWithAttributes:objectAttributes];
            [buffer addObject:object];
        }
        objects = [buffer copy];
    }
    return objects;
}

@end
