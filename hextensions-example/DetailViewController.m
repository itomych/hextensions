//
//  DetailViewController.m
//  hextensions
//
//  Created by How Else on 3/12/15.
//  Copyright (c) 2015 How Else. All rights reserved.
//

#import "DetailViewController.h"

#import "UIKit+HExtensions.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.roundedButton setBackgroundImage:[UIImage he_resizableImageWithColor:[UIColor brownColor] cornerRadius:5.0] forState:UIControlStateNormal];
}

- (IBAction)replaceButtonTapped:(UIBarButtonItem *)button {
    UIViewController *controller = [[UIViewController alloc] init];
    controller.title = @"New View Controller";
    controller.view.backgroundColor = [UIColor redColor];
    [self.navigationController he_setTopViewController:controller animated:YES];
}

@end
