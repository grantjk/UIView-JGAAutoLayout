//
//  UIView+JGAAutoLayout.h
//  cans
//
//  Created by John Grant on 2013-03-16.
//  Copyright (c) 2013 JGApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JGAAutoLayout)

- (void)centerSubviewOnX:(UIView *)subview;
- (void)centerSubviewOnY:(UIView *)subview;

- (NSLayoutConstraint *)pinSubview:(UIView *)subview toLeftEdgeWithInset:(CGFloat)inset;
- (NSLayoutConstraint *)pinSubview:(UIView *)subview toRightEdgeWithInset:(CGFloat)inset;
- (NSLayoutConstraint *)pinSubview:(UIView *)subview toTopEdgeWithInset:(CGFloat)inset;
- (NSLayoutConstraint *)pinSubview:(UIView *)subview toBottomEdgeWithInset:(CGFloat)inset;
- (void)pinSubview:(UIView *)view1 toSubview:(UIView *)view2 attribute:(NSLayoutAttribute)attribute;

- (void)constrainToWidth:(CGFloat)width;
- (void)constrainToWidthOfAtLeast:(CGFloat)width;
- (void)constrainToHeight:(CGFloat)height;
- (void)constrainToHeightOfAtLeast:(CGFloat)height;

- (void)constrainToSuperviewBounds;


#pragma mark - Deprecated
- (void)pinToLeftOfSuperViewWithInset:(CGFloat)inset __attribute__((deprecated));
- (void)pinToRightOfSuperViewWithInset:(CGFloat)inset __attribute__((deprecated));
- (void)pinToTopOfSuperViewWithInset:(CGFloat)inset __attribute__((deprecated));
- (void)pinToBottomOfSuperViewWithInset:(CGFloat)inset __attribute__((deprecated));

- (void)centerInSuperview __attribute__((deprecated));
- (void)centerInSuperviewOnX __attribute__((deprecated));
- (void)centerInSuperviewOnY __attribute__((deprecated));


@end
