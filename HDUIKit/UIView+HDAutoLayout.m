//
//  UIView+HDAutoLayout.m
//  HDUIKit
//
//  Created by 魏宏昌 on 16/5/3.
//  Copyright © 2016年 恒大互联网中心. All rights reserved.
//

#import "UIView+HDAutoLayout.h"

@implementation UIView (HDAutoLayout)
#pragma mark - for self

- (void)useAutoLayout
{
    self.translatesAutoresizingMaskIntoConstraints = NO;
}

- (void)autoCenterInSuperview
{
    [self autoAlignInSuperview:HDAutoLayoutAlignCenterX];
    [self autoAlignInSuperview:HDAutoLayoutAlignCenterY];
}

- (void)autoAlignInSuperview:(HDAutoLayoutAlignType)alignType
{
    [self autoAlignInSuperview:alignType constant:.0];
}

- (void)addFullContentView:(UIView *)contentView
{
    [self addContentView:contentView insets:UIEdgeInsetsZero];
}

- (void)addContentView:(UIView *)contentView insets:(UIEdgeInsets)insets
{
    NSDictionary *view = NSDictionaryOfVariableBindings(contentView);
    NSDictionary *metrics = @{@"top": @(insets.top), @"left": @(insets.left), @"bottom": @(insets.bottom), @"right": @(insets.right)};
    NSString *H01 = @"H:|-left-[contentView]-right-|";
    NSString *V01 = @"V:|-top-[contentView]-bottom-|";
    [self autoAddConstraintsWithVisualFormatArray:@[H01,V01] options:0 metrics:metrics views:view];
}

- (void)autoAlignInSuperview:(HDAutoLayoutAlignType)alignType constant:(CGFloat)constant;
{
    UIView *superview = self.superview;
    NSAssert(superview, @"View's superview must not be nil.\nView: %@", self);
    [self autoAlign:alignType relatedView:superview constant:constant];
}

- (void)autoAlign:(HDAutoLayoutAlignType)alignType relatedView:(UIView *)relatedView constant:(CGFloat)constant
{
    UIView *superview = self.superview;
    NSAssert(superview, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutAttribute attribute = (NSLayoutAttribute)alignType;
    [superview addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:attribute relatedBy:NSLayoutRelationEqual toItem:relatedView attribute:attribute multiplier:1.0f constant:constant]];
}

- (void)autoAlign:(HDAutoLayoutAlignType)alignType relatedView:(UIView *)relatedView relatedAlign:(HDAutoLayoutAlignType)relatedAlign constant:(CGFloat)constant
{
    UIView *superview = self.superview;
    NSAssert(superview, @"View's superview must not be nil.\nView: %@", self);
    NSLayoutAttribute attribute1 = (NSLayoutAttribute)alignType;
    NSLayoutAttribute attribute2 = (NSLayoutAttribute)relatedAlign;
    [superview addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:attribute1 relatedBy:NSLayoutRelationEqual toItem:relatedView attribute:attribute2 multiplier:1.0f constant:constant]];
}

- (void)autoMatchSizeType:(HDBAutoLayoutSizeType)sizeType1 sizeType2:(HDBAutoLayoutSizeType)sizeType2 rate:(CGFloat)rate
{
    UIView *superview = self.superview;
    NSAssert(superview, @"View's superview must not be nil.\nView: %@", self);
    [superview addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:(NSLayoutAttribute)sizeType1 relatedBy:NSLayoutRelationEqual toItem:self attribute:(NSLayoutAttribute)sizeType2 multiplier:rate constant:.0]];
}

- (void)autoMatchSizeType:(HDBAutoLayoutSizeType)sizeType1 relatedView:(UIView *)relatedView  sizeType2:(HDBAutoLayoutSizeType)sizeType2 rate:(CGFloat)rate constant:(CGFloat)constant
{
    UIView *superview = self.superview;
    NSAssert(superview, @"View's superview must not be nil.\nView: %@", self);
    [superview addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:(NSLayoutAttribute)sizeType1 relatedBy:NSLayoutRelationEqual toItem:relatedView attribute:(NSLayoutAttribute)sizeType2 multiplier:rate constant:constant]];
}

- (void)clearAllConstraints
{
    [self removeConstraints:self.constraints];
    for (UIView *sub in [self subviews]) {
        [sub clearAllConstraints];
    }
}

#pragma mark - for superView
- (void)autoAddConstraintsWithVisualFormatArray:(NSArray *)formatArray options:(NSLayoutFormatOptions)opts metrics:(NSDictionary *)metrics views:(NSDictionary *)views
{
    for (NSString *format in formatArray) {
        NSAssert([format isKindOfClass:[NSString class]], @"formatArr must be array of NSString");
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:format options:opts metrics:metrics views:views]];
    }
}

- (void)autoAddConstraintsWithVisualFormatArray:(NSArray *)formatArray optionsArray:(NSArray *)optsArray metrics:(NSDictionary *)metrics views:(NSDictionary *)views
{
    [formatArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLayoutFormatOptions opts = [[optsArray objectAtIndex:idx] integerValue];
        NSAssert([obj isKindOfClass:[NSString class]], @"formatArr must be array of NSString");
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:obj options:opts metrics:metrics views:views]];
    }];
}

@end
