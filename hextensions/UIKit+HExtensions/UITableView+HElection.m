//
//  UITableView+HElection.m
//  hextensions
//
//  Created by How Else on 3/12/15.
//  Copyright (c) 2015 How Else. All rights reserved.
//

#import "UITableView+HElection.h"

@implementation UITableView (HElection)

- (void)he_selectAllRowsAnimated:(BOOL)animated
{
    for (NSInteger section = 0; section < self.numberOfSections; ++section) {
        for (NSInteger row = 0; row < [self numberOfRowsInSection:section]; ++row) {
            [self selectRowAtIndexPath:[NSIndexPath indexPathForRow:row inSection:section] animated:animated scrollPosition:UITableViewScrollPositionNone];
        }
    }
}

- (void)he_selectRowsAtIndexPaths:(NSArray *)indexPaths animated:(BOOL)animated
{
    for (NSIndexPath *indexPath in indexPaths) {
        [self selectRowAtIndexPath:indexPath animated:animated scrollPosition:UITableViewScrollPositionNone];
    }
}

- (void)he_deselectAllRowsAnimated:(BOOL)animated
{
    [self he_deselectRowsAtIndexPaths:self.indexPathsForSelectedRows animated:animated];
}

- (void)he_deselectRowsAtIndexPaths:(NSArray *)indexPaths animated:(BOOL)animated
{
    for (NSIndexPath *indexPath in indexPaths) {
        [self deselectRowAtIndexPath:indexPath animated:animated];
    }
}

@end
