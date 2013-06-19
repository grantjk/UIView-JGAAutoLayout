//
//  UIView+JGAAutoLayout.h
//  cans
//
//  Created by John Grant on 2013-03-16.
//  Copyright (c) 2013 JGApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JGAAutoLayout)

- (NSLayoutConstraint *)constrainToSquare;
- (NSLayoutConstraint *)centerSubviewOnX:(UIView *)subview;
- (NSLayoutConstraint *)centerSubviewOnY:(UIView *)subview;
- (void)constrainSubviewToBounds:(UIView *)subview;

- (NSLayoutConstraint *)pinSubview:(UIView *)subview toLeftEdgeWithInset:(CGFloat)inset;
- (NSLayoutConstraint *)pinSubview:(UIView *)subview toRightEdgeWithInset:(CGFloat)inset;
- (NSLayoutConstraint *)pinSubview:(UIView *)subview toTopEdgeWithInset:(CGFloat)inset;
- (NSLayoutConstraint *)pinSubview:(UIView *)subview toBottomEdgeWithInset:(CGFloat)inset;
- (NSLayoutConstraint *)pinSubview:(UIView *)view1 toSubview:(UIView *)view2 attribute:(NSLayoutAttribute)attribute;

- (NSLayoutConstraint *)constrainToWidth:(CGFloat)width;
- (NSLayoutConstraint *)constrainToWidthOfAtLeast:(CGFloat)width;
- (NSLayoutConstraint *)constrainToHeight:(CGFloat)height;
- (NSLayoutConstraint *)constrainToHeightOfAtLeast:(CGFloat)height;

#pragma mark - Deprecated
- (void)pinToLeftOfSuperViewWithInset:(CGFloat)inset __attribute__((deprecated));
- (void)pinToRightOfSuperViewWithInset:(CGFloat)inset __attribute__((deprecated));
- (void)pinToTopOfSuperViewWithInset:(CGFloat)inset __attribute__((deprecated));
- (void)pinToBottomOfSuperViewWithInset:(CGFloat)inset __attribute__((deprecated));

- (void)centerInSuperview __attribute__((deprecated));
- (void)centerInSuperviewOnX __attribute__((deprecated));
- (void)centerInSuperviewOnY __attribute__((deprecated));
- (void)constrainToSuperviewBounds __attribute__((deprecated));

@end
