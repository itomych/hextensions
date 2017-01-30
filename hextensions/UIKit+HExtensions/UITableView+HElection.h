//
//  UITableView+HElection.h
//  hextensions
//
//  Created by How Else on 3/12/15.
//  Copyright (c) 2015 How Else. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (HElection)

- (void)he_selectAllRowsAnimated:(BOOL)animated;

- (void)he_selectRowsAtIndexPaths:(nullable NSArray *)indexPaths animated:(BOOL)animated;

- (void)he_deselectAllRowsAnimated:(BOOL)animated;

- (void)he_deselectRowsAtIndexPaths:(nullable NSArray *)indexPaths animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
