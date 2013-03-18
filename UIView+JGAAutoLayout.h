//
//  UIView+JGAAutoLayout.h
//  cans
//
//  Created by John Grant on 2013-03-16.
//  Copyright (c) 2013 JGApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JGAAutoLayout)

- (void)constrainToWidth:(CGFloat)width;
- (void)constrainToHeight:(CGFloat)height;

- (void)centerInSuperview;
- (void)centerInSuperviewOnX;
- (void)centerInSuperviewOnY;

- (void)pinToLeftOfSuperViewWithInset:(CGFloat)inset;
- (void)pinToRightOfSuperViewWithInset:(CGFloat)inset;
- (void)pinToTopOfSuperViewWithInset:(CGFloat)inset;
- (void)pinToBottomOfSuperViewWithInset:(CGFloat)inset;

- (void)pinSubview:(UIView *)view1 toSubview:(UIView *)view2 attribute:(NSLayoutAttribute)attribute;

@end
