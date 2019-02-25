//
//  NSFileManager+HECachesDirectory.m
//  hextensions
//
//  Created by How Else on 2/25/19.
//  Copyright © 2019 How Else. All rights reserved.
//

#import "NSFileManager+HECachesDirectory.h"

@implementation NSFileManager (HECachesDirectory)

- (NSURL *)he_URLForCachesSubdirectoryWithName:(NSString *)name error:(NSError *_Nullable __autoreleasing *)error {
    NSURL *URL = [self URLForDirectory:NSCachesDirectory
                              inDomain:NSUserDomainMask
                     appropriateForURL:nil
                                create:NO
                                 error:error];
    if (URL) {
        URL = [URL URLByAppendingPathComponent:name isDirectory:YES];
        NSString *path = URL.path;
        BOOL isDirectory;
        if ([self fileExistsAtPath:path isDirectory:&isDirectory]) {
            if (isDirectory) {
                return URL;
            }
            NSError *underlyingError = [NSError errorWithDomain:NSPOSIXErrorDomain code:ENOTDIR userInfo:nil];
            *error = [NSError errorWithDomain:NSCocoaErrorDomain
                                         code:NSFileReadUnknownError
                                     userInfo:@{ NSFilePathErrorKey : path,
                                                 NSUnderlyingErrorKey : underlyingError }];
        } else if ([self createDirectoryAtURL:URL withIntermediateDirectories:NO attributes:nil error:error]) {
            return URL;
        }
    }
    return nil;
}

@end
