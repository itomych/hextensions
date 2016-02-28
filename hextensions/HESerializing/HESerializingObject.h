//
//  HESerializingObject.h
//  hextensions
//
//  Created by How Else on 2/27/16.
//  Copyright © 2016 How Else. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "HESerializing.h"

@interface HESerializingObject : NSObject <HESerializing>

- (instancetype)initWithAttributes:(id)attributes;

+ (instancetype)objectWithAttributes:(id)attributes;

+ (NSArray *)objectsWithAttributes:(id)attributes;

@end
