//
//  UIWebView+HEJavaScriptContext.m
//  hextensions
//
//  Created by How Else on 1/30/17.
//  Copyright © 2017 How Else. All rights reserved.
//

#import "UIWebView+HEJavaScriptContext.h"

@implementation UIWebView (HEJavaScriptContext)

- (void)he_defineJSFunction:(NSString *)name block:(void (^)(void))block {
    [self valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"][name] = ^{
        dispatch_async(dispatch_get_main_queue(), block);
    };
}

@end
