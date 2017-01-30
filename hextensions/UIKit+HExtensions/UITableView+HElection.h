//
//  UITableView+HElection.h
//  hextensions
//
//  Created by How Else on 3/12/15.
//  Copyright (c) 2015 How Else. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (HElection)

- (void)he_selectAllRowsAnimated:(BOOL)animated;

- (void)he_selectRowsAtIndexPaths:(NSArray *)indexPaths animated:(BOOL)animated;

- (void)he_deselectAllRowsAnimated:(BOOL)animated;

- (void)he_deselectRowsAtIndexPaths:(NSArray *)indexPaths animated:(BOOL)animated;

@end
