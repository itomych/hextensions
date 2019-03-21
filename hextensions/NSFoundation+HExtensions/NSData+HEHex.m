//
//  NSData+HEHex.m
//  hextensions
//
//  Created by How Else on 3/21/19.
//  Copyright © 2019 How Else. All rights reserved.
//

#import "NSData+HEHex.h"

@implementation NSData (HEHex)

- (NSString *)he_hexString {
    const char *hexTable = "0123456789ABCDEF";
    
    const NSUInteger byteLength = self.length;
    const NSUInteger charLength = byteLength * 2;
    char *const hexChars = malloc(charLength * sizeof(*hexChars));
    
    // TODO: Use -[NSData enumerateByteRangesUsingBlock:] to avoid an extra copy of the NSData buffer if the data isn't contiguous
    // https://github.com/jmah/NSData-FastHex.git
    const uint8_t *bytePtr = self.bytes;
    char *charPtr = hexChars;
    
    for (unsigned i = 0; i < byteLength; ++i) {
        const uint8_t byte = *bytePtr++;
        *charPtr++ = hexTable[(byte >> 4) & 0xF];
        *charPtr++ = hexTable[byte & 0xF];
    }
    
    return [[NSString alloc] initWithBytesNoCopy:hexChars length:charLength encoding:NSASCIIStringEncoding freeWhenDone:YES];
}

@end
