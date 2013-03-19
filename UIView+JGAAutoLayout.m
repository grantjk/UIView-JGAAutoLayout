//
//  UIView+JGAAutoLayout.m
//  cans
//
//  Created by John Grant on 2013-03-16.
//  Copyright (c) 2013 JGApps. All rights reserved.
//

#import "UIView+JGAAutoLayout.h"

@implementation UIView (JGAAutoLayout)

- (void)centerInSuperview {
    [self centerInSuperviewOnX];
    [self centerInSuperviewOnY];
}

- (void)centerInSuperviewOnX {
    [[self superview] addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                                 attribute:NSLayoutAttributeCenterX
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:[self superview]
                                                                 attribute:NSLayoutAttributeCenterX
                                                                 multiplier:1
                                                                   constant:1]];
}
- (void)centerInSuperviewOnY {
    [[self superview] addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                                 attribute:NSLayoutAttributeCenterY
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:[self superview]
                                                                 attribute:NSLayoutAttributeCenterY
                                                                multiplier:1
                                                                  constant:1]];
}
- (void)constrainToSuperviewBounds {
    [self pinToLeftOfSuperViewWithInset:0];
    [self pinToTopOfSuperViewWithInset:0];
    [self pinToBottomOfSuperViewWithInset:0];
    [self pinToRightOfSuperViewWithInset:0];
}

- (void)constrainToWidth:(CGFloat)width {
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                    multiplier:1
                                                      constant:width]];
}
- (void)constrainToWidthOfAtLeast:(CGFloat)width {
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                    multiplier:1
                                                      constant:width]];
}
- (void)constrainToHeightOfAtLeast:(CGFloat)height {
 [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                    multiplier:1
                                                      constant:height]];   
}
- (void)constrainToHeight:(CGFloat)height {
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                    multiplier:1
                                                      constant:height]];
}

- (void)pinToLeftOfSuperViewWithInset:(CGFloat)inset {
    [[self superview] addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:[self superview]
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1
                                                                  constant:inset]];
}
- (void)pinToRightOfSuperViewWithInset:(CGFloat)inset {
    [[self superview] addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                                 attribute:NSLayoutAttributeRight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:[self superview]
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1
                                                                  constant:-inset]];
}

- (void)pinToTopOfSuperViewWithInset:(CGFloat)inset {
    [[self superview] addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                                 attribute:NSLayoutAttributeTop
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:[self superview]
                                                                 attribute:NSLayoutAttributeTop
                                                                multiplier:1
                                                                  constant:inset]];
}
- (void)pinToBottomOfSuperViewWithInset:(CGFloat)inset {
    [[self superview] addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                                 attribute:NSLayoutAttributeBottom
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:[self superview]
                                                                 attribute:NSLayoutAttributeBottom
                                                                multiplier:1
                                                                  constant:-inset]];
}

- (void)pinSubview:(UIView *)view1 toSubview:(UIView *)view2 attribute:(NSLayoutAttribute)attribute {
      [self addConstraint:[NSLayoutConstraint constraintWithItem:view1 attribute:attribute relatedBy:NSLayoutRelationEqual toItem:view2 attribute:attribute multiplier:1 constant:0]];
}

@end
