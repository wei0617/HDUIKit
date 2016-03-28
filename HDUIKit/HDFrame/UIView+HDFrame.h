//
//  UIView+HDFrame.h
//  HDUIKit
//
//  Created by 魏宏昌 on 16/3/12.
//  Copyright © 2016年 恒大互联网中心. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (HDFrame)

+ (CGFloat)screenWidth;
+ (CGFloat)screenHeight;

@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat right;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat bottom;

@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGSize size;

@property (nonatomic, assign, readonly) CGPoint leftTop;
@property (nonatomic, assign, readonly) CGPoint leftBottom;
@property (nonatomic, assign, readonly) CGPoint rightTop;
@property (nonatomic, assign, readonly) CGPoint rightBottom;

@end
