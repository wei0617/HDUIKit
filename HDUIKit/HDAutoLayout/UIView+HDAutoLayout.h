//
//  UIView+HDAutoLayout.h
//  HDUIKit
//
//  Created by 魏宏昌 on 16/5/3.
//  Copyright © 2016年 恒大互联网中心. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, HDAutoLayoutAlignType) {
    HDAutoLayoutAlignCenterX = NSLayoutAttributeCenterX,
    HDAutoLayoutAlignCenterY = NSLayoutAttributeCenterY,
    HDAutoLayoutAlignTop = NSLayoutAttributeTop,
    HDAutoLayoutAlignLeft = NSLayoutAttributeLeft,
    HDAutoLayoutAlignBottom = NSLayoutAttributeBottom,
    HDAutoLayoutAlignRight = NSLayoutAttributeRight,
    HDAutoLayoutAlignTopMargin = NSLayoutAttributeTopMargin,
    HDAutoLayoutAlignLeftMargin = NSLayoutAttributeLeftMargin,
    HDAutoLayoutAlignBottomMargin = NSLayoutAttributeBottomMargin,
    HDAutoLayoutAlignRightMargin = NSLayoutAttributeRightMargin
};

typedef NS_ENUM(NSInteger, HDBAutoLayoutSizeType) {
    HDAutoLayoutSizeWidth           = NSLayoutAttributeWidth,
    HDAutoLayoutSizeHeight          = NSLayoutAttributeHeight,
    HDAutoLayoutSizeNotAnAttribute  = NSLayoutAttributeNotAnAttribute
};

@interface UIView (HDAutoLayout)

#pragma mark - for self
/**
 启用autolayout
 **/
- (void)useAutoLayout;

/**
 相对superView对齐，水平，垂直居中
 **/
- (void)autoCenterInSuperview;

/**
 *  全屏加子view
 *
 *  @param contentView 子view
 *
 */
- (void)addFullContentView:(UIView *)contentView;

/**
 *  添加子view
 *
 *  @param contentView 子view
 *  @param insets 相对父view上下左右空多少
 *
 */
- (void)addContentView:(UIView *)contentView insets:(UIEdgeInsets)insets;

/**
 相对superView对齐，根据type
 **/
- (void)autoAlignInSuperview:(HDAutoLayoutAlignType)alignType;

/**
 相对superView对齐，根据type, constant
 **/
- (void)autoAlignInSuperview:(HDAutoLayoutAlignType)alignType constant:(CGFloat)constant;

/**
 *  相对relatedView对齐，self.alignType = relatedView.alignType + constant
 *  @param alignType
 *  @param relatedView
 *  @param constant
 */
- (void)autoAlign:(HDAutoLayoutAlignType)alignType relatedView:(UIView *)relatedView constant:(CGFloat)constant;

/**
 *  相对relatedView对齐，self.alignType = relatedView.relatedAlign + constant
 *  @param alignType
 *  @param relatedView
 *  @param relatedAlign
 *  @param constant
 */
- (void)autoAlign:(HDAutoLayoutAlignType)alignType relatedView:(UIView *)relatedView relatedAlign:(HDAutoLayoutAlignType)relatedAlign constant:(CGFloat)constant;

/**
 *  添加宽高比约束 sizeType1 = sizeType2 * rate
 */
- (void)autoMatchSizeType:(HDBAutoLayoutSizeType)sizeType1 sizeType2:(HDBAutoLayoutSizeType)sizeType2 rate:(CGFloat)rate;

/**
 *  添加宽高相关约束 self.sizeType1 = relatedView.sizeType2 * rate + constant
 */
- (void)autoMatchSizeType:(HDBAutoLayoutSizeType)sizeType1 relatedView:(UIView *)relatedView  sizeType2:(HDBAutoLayoutSizeType)sizeType2 rate:(CGFloat)rate constant:(CGFloat)constant;

/**
 *  清除所有Constraint, 包括subview
 */
- (void)clearAllConstraints;

#pragma mark - for superView
/**
 *  VFL 方式
 *
 *  @param formatArray VFL数组
 *  @param opts
 *  @param metrics
 *  @param views
 *
 */
- (void)autoAddConstraintsWithVisualFormatArray:(NSArray *)formatArray options:(NSLayoutFormatOptions)opts metrics:(NSDictionary *)metrics views:(NSDictionary *)views;

/**
 *  VFL 方式 和上一个的区别就是opts 也是数组
 */
- (void)autoAddConstraintsWithVisualFormatArray:(NSArray *)formatArray optionsArray:(NSArray *)optsArray metrics:(NSDictionary *)metrics views:(NSDictionary *)views;
@end
