//
//  UIColor+HDBHex.m
//  HDBUIKit
//
//  Created by 孙华 on 15/12/8.
//  Copyright © 2015年 恒大互联网中心. All rights reserved.
//

#import "UIColor+HDBHex.h"

@implementation UIColor (HDBHex)
+ (UIColor *)colorWithHex:(uint) hex alpha:(CGFloat)alpha
{
    int red, green, blue;
    blue = hex & 0x0000FF;
    green = ((hex & 0x00FF00) >> 8);
    red = ((hex & 0xFF0000) >> 16);
    
    return [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:alpha];
}
@end
