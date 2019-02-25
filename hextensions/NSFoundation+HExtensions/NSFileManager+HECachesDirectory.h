//
//  NSFileManager+HECachesDirectory.h
//  hextensions
//
//  Created by How Else on 2/25/19.
//  Copyright © 2019 How Else. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSFileManager (HECachesDirectory)

- (nullable NSURL *)he_URLForCachesSubdirectoryWithName:(NSString *)name error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
