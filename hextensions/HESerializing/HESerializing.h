//
//  HESerializing.h
//  hextensions
//
//  Created by How Else on 2/27/16.
//  Copyright © 2016 How Else. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HESerializing <NSObject>

@property (nonatomic, copy, readonly) id attributes;

- (void)setAttributes:(id)attributes;

@end
