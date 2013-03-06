//
//  UIView+TKGeometry.m
//  Pure
//
//  Created by Tomasz Kuźma on 7/27/12.
//  Copyright (c) 2012 Tomasz Kuźma Sp. z.o.o www.Tomasz Kuźma.pl  , Tomasz Kuzma (mapedd@mapedd.com). All rights reserved.
//

#import "UIView+TKGeometry.h"

inline CGPoint TKCGRectCenter(CGRect rect){
    return CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect));
}


inline CGRect TKCGRectMakeBoundsFromFrame(CGRect frame){
    return CGRectMake(0.0f, 0.0f, frame.size.width, frame.size.height);
}

inline CGRect TKCGRectAtCenterWithSize(CGPoint center, CGSize size){
    return CGRectMake(center.x - size.width/2.0, center.y - size.height/2.0, size.width, size.height);
}

CGRect TKRectCenteredInRect(CGRect innerRect, CGRect outerRect){

    innerRect.origin.x = outerRect.origin.x+ floorf((outerRect.size.width - innerRect.size.width) / (CGFloat) 2.0);
    innerRect.origin.y = outerRect.origin.y + floorf((outerRect.size.height - innerRect.size.height) / (CGFloat) 2.0);

    return innerRect;
}

@implementation UIView (TKGeometry)


// origin

- (CGPoint)origin{
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

// size

- (CGSize)size{
    return self.frame.size;
}

- (void)setSize:(CGSize)size{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
    
}

// frame

- (CGFloat)height{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)width{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)xOrigin{
    return self.frame.origin.x;
}

- (void)setXOrigin:(CGFloat)xOrigin{
    
    CGRect frame = self.frame;
    frame.origin.x = xOrigin;
    self.frame = frame;
}

- (CGFloat)yOrigin{
    return self.frame.origin.y;
}

- (void)setYOrigin:(CGFloat)yOrigin{
    CGRect frame = self.frame;
    frame.origin.y = yOrigin;
    self.frame = frame;
}

- (void)setMaxX:(CGFloat)maxX{
    CGRect frame = self.frame;
    frame.origin.x = maxX - frame.size.width;
    self.frame = frame;
}

- (CGFloat)maxX{
    return CGRectGetMaxX(self.frame);
}

- (void)setMaxY:(CGFloat)maxY{
    CGRect frame = self.frame;
    frame.origin.y = maxY - frame.size.height;
    self.frame = frame;
}

- (CGFloat)maxY{
    return CGRectGetMaxY(self.frame);
}

// center

- (CGFloat)xCenter{
    return self.center.x;
}

- (void)setXCenter:(CGFloat)xCenter{
    CGPoint center = self.center;
    center.x = xCenter;
    self.center = center;
}

- (CGFloat)yCenter{
    return self.center.y;
}

- (void)setYCenter:(CGFloat)yCenter{
    CGPoint center = self.center;
    center.y = yCenter;
    self.center = center;
}

@end

@implementation UIScrollView (TKGeometry)

- (void)setContentOffsetX:(CGFloat)contentOffsetX{
    CGPoint newContentOffset = self.contentOffset;
    newContentOffset.x = contentOffsetX;
    self.contentOffset = newContentOffset;
}

- (void)setContentOffsetY:(CGFloat)contentOffsetY{
    CGPoint newContentOffset = self.contentOffset;
    newContentOffset.y = contentOffsetY;
    self.contentOffset = newContentOffset;
}

- (CGFloat)contentOffsetX{
    return self.contentOffset.x;
}

- (CGFloat)contentOffsetY{
    return self.contentOffset.y;
}

@end


@implementation UIView (TKCreation)

+ (UIView *)TKViewWithFrame:(CGRect)frame{
    UIView *view = [[UIView alloc] initWithFrame:frame];
    return view;
}

+ (UIView *)TKViewWithFrame:(CGRect)frame andBackgroundColor:(UIColor *)color{
    UIView *view = [UIView TKViewWithFrame:frame];
    view.backgroundColor = color;
    return view;
}

@end