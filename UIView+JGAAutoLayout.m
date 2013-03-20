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

- (NSLayoutConstraint *)centerSubviewOnX:(UIView *)subview {
   NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:subview
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1
                                                      constant:1];
    [self addConstraint:constraint];
    return constraint;
}
- (NSLayoutConstraint *)centerSubviewOnY:(UIView *)subview {
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:subview
                                                     attribute:NSLayoutAttributeCenterY
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1
                                                      constant:1];
    [self addConstraint:constraint];
    return constraint;
}

- (void)constrainSubviewToBounds:(UIView *)subview {
    [self pinSubview:subview toBottomEdgeWithInset:0];
    [self pinSubview:subview toTopEdgeWithInset:0];
    [self pinSubview:subview toRightEdgeWithInset:0];
    [self pinSubview:subview toLeftEdgeWithInset:0];
}





- (NSLayoutConstraint *)constrainToWidth:(CGFloat)width {
    NSLayoutConstraint *constraint =[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                    multiplier:1
                                                      constant:width];
    [self addConstraint:constraint];
    return constraint;

}
- (NSLayoutConstraint *)constrainToWidthOfAtLeast:(CGFloat)width {
    NSLayoutConstraint *constraint =[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                    multiplier:1
                                                      constant:width];
    [self addConstraint:constraint];
    return constraint;

}
- (NSLayoutConstraint *)constrainToHeightOfAtLeast:(CGFloat)height {
    NSLayoutConstraint *constraint =[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                    multiplier:1
                                                      constant:height];
    [self addConstraint:constraint];
    return constraint;

}
- (NSLayoutConstraint *)constrainToHeight:(CGFloat)height {
    NSLayoutConstraint *constraint =[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                    multiplier:1
                                                      constant:height];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)pinSubview:(UIView *)subview toLeftEdgeWithInset:(CGFloat)inset {
    NSLayoutConstraint *constraint =[NSLayoutConstraint constraintWithItem:subview
                                                                 attribute:NSLayoutAttributeLeft
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self
                                                                 attribute:NSLayoutAttributeLeft
                                                                multiplier:1
                                                                  constant:inset];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)pinSubview:(UIView *)subview toRightEdgeWithInset:(CGFloat)inset {
    NSLayoutConstraint *constraint =[NSLayoutConstraint constraintWithItem:subview
                                                                 attribute:NSLayoutAttributeRight
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self
                                                                 attribute:NSLayoutAttributeRight
                                                                multiplier:1
                                                                  constant:-inset];
    [self addConstraint:constraint];
    return constraint;
}
- (NSLayoutConstraint *)pinSubview:(UIView *)subview toTopEdgeWithInset:(CGFloat)inset {
    NSLayoutConstraint *constraint =[NSLayoutConstraint constraintWithItem:subview
                                                                 attribute:NSLayoutAttributeTop
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self
                                                                 attribute:NSLayoutAttributeTop
                                                                multiplier:1
                                                                  constant:inset];
    [self addConstraint:constraint];
    return constraint;
}
- (NSLayoutConstraint *)pinSubview:(UIView *)subview toBottomEdgeWithInset:(CGFloat)inset {
    NSLayoutConstraint *constraint =[NSLayoutConstraint constraintWithItem:subview
                                                                 attribute:NSLayoutAttributeBottom
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self
                                                                 attribute:NSLayoutAttributeBottom
                                                                multiplier:1
                                                                  constant:-inset];
    [self addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)pinSubview:(UIView *)view1 toSubview:(UIView *)view2 attribute:(NSLayoutAttribute)attribute {
        NSLayoutConstraint *constraint =[NSLayoutConstraint constraintWithItem:view1 attribute:attribute relatedBy:NSLayoutRelationEqual toItem:view2 attribute:attribute multiplier:1 constant:0];
    [self addConstraint:constraint];
    return constraint;
}

#pragma mark - Deprecated
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
@end
