//
//  UITableView+HElection.h
//  hextensions
//
//  Created by How Else on 3/12/15.
//  Copyright (c) 2015 How Else. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (HElection)

- (void)selectAllRowsAnimated:(BOOL)animated;

- (void)selectRowsAtIndexPaths:(NSArray *)indexPaths animated:(BOOL)animated;

- (void)deselectAllRowsAnimated:(BOOL)animated;

- (void)deselectRowsAtIndexPaths:(NSArray *)indexPaths animated:(BOOL)animated;

@end
