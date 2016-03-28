//
//  UIView+HDFrame.m
//  HDUIKit
//
//  Created by 魏宏昌 on 16/3/12.
//  Copyright © 2016年 恒大互联网中心. All rights reserved.
//

#import "UIView+HDFrame.h"

@implementation UIView (HDFrame)

+ (CGFloat)screenWidth {
    return [[UIScreen mainScreen] bounds].size.width;
}

+ (CGFloat)screenHeight {
    return [[UIScreen mainScreen] bounds].size.height;
}

#pragma mark - setter
- (void)setLeft:(CGFloat)left {
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - self.width;
    self.frame = frame;
}

- (void)setTop:(CGFloat)top {
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - self.height;
    self.frame = frame;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.centerY);
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.centerX, centerY);
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

#pragma mark - getter
- (CGFloat)left {
    return self.frame.origin.x;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (CGFloat)centerX {
    return self.left + self.width/2.0f;
}

- (CGFloat)centerY {
    return self.top + self.height/2.0f;
}

- (CGPoint)origin {
    return CGPointMake(self.left, self.top);
}

- (CGSize)size {
    return CGSizeMake(self.width, self.height);
}

- (CGPoint)leftTop {
    return self.origin;
}

- (CGPoint)leftBottom {
    return CGPointMake(self.left, self.bottom);
}

- (CGPoint)rightTop {
    return CGPointMake(self.right, self.top);
}

- (CGPoint)rightBottom {
    return CGPointMake(self.right, self.bottom);
}

@end
