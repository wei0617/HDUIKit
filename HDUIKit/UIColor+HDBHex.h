//
//  UIColor+HDBHex.h
//  HDBUIKit
//
//  Created by 孙华 on 15/12/8.
//  Copyright © 2015年 恒大互联网中心. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HDBHex)
/**
 *  通过16进制数字创建颜色
 *  方便之后上层构建应用app风格颜色
 */
+ (UIColor *)colorWithHex:(uint)hex alpha:(CGFloat)alpha;
@end
