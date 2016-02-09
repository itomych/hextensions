//
//  ViewController.m
//  hextensions-example
//
//  Created by How Else on 3/12/15.
//  Copyright (c) 2015 How Else. All rights reserved.
//

#import "RootViewController.h"

#import "UIKit+HExtensions.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)selectAllButtonTapped:(UIBarButtonItem *)button {
    [self.tableView selectAllRowsAnimated:YES];
}

- (IBAction)deselectAllButtonTapped:(UIBarButtonItem *)button {
    [self.tableView deselectAllRowsAnimated:YES];
}

@end
