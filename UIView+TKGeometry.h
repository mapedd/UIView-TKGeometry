//
//  UIView+TKGeometry.h
//  Pure
//
//  Created by Tomasz Kuźma on 7/27/12.
//  Copyright (c) 2012 Creadhoc Sp. z.o.o www.creadhoc.pl  , Tomasz Kuzma (mapedd@mapedd.com). All rights reserved.
//

#import <UIKit/UIKit.h>


static __inline__ CGRect TKCGRectMakeBoundsFromFrame(CGRect frame);
static __inline__ CGRect TKCGRectAtCenterWithSize(CGPoint center, CGSize size);
static __inline__ CGRect TKRectCenteredInRect(CGRect innerRect, CGRect outerRect);

@interface UIView (TKGeometry)

// origin

- (CGPoint)origin;

- (void)setOrigin:(CGPoint)origin;

// size

- (CGSize)size;

- (void)setSize:(CGSize)size;

// frame

- (void)setHeight:(CGFloat)height;

- (CGFloat)height;

- (void)setWidth:(CGFloat)width;

- (CGFloat)width;

- (CGFloat)xOrigin;

- (void)setXOrigin:(CGFloat)xOrigin;

- (CGFloat)yOrigin;

- (void)setYOrigin:(CGFloat)yOrigin;

- (void)setMaxX:(CGFloat)maxX;

- (CGFloat)maxX;

- (void)setMaxY:(CGFloat)maxY;

- (CGFloat)maxY;

// center

- (CGFloat)xCenter;

- (void)setXCenter:(CGFloat)xCenter;

- (CGFloat)yCenter;

- (void)setYCenter:(CGFloat)yCenter;

@end

@interface UIScrollView (TKGeometry)

- (void)setContentOffsetX:(CGFloat)contentOffsetX;

- (void)setContentOffsetY:(CGFloat)contentOffsetY;

- (CGFloat)contentOffsetX;

- (CGFloat)contentOffsetY;

@end

@interface UIView (TKCreation)

+ (UIView *)TKViewWithFrame:(CGRect)frame;

+ (UIView *)TKViewWithFrame:(CGRect)frame andBackgroundColor:(UIColor *)color;

@end