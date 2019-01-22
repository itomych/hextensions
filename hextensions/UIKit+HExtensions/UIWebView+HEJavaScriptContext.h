//
//  UIWebView+HEJavaScriptContext.h
//  hextensions
//
//  Created by How Else on 1/30/17.
//  Copyright © 2017 How Else. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIWebView (HEJavaScriptContext)

- (void)he_defineJSFunction:(NSString *)name block:(void (^)(void))block API_AVAILABLE(macos(10.8), ios(6.0), watchos(2.0), tvos(9.0));

@end

NS_ASSUME_NONNULL_END
