//
//  UIView+HDBConfig.m
//  HDBUIKit
//
//  Created by 孙华 on 15/12/16.
//  Copyright © 2015年 恒大互联网中心. All rights reserved.
//

#import "UIView+HDBConfig.h"

@implementation UIView (HDBConfig)
- (void)configViewWithData:(id)data
{
    NSLog(@"%s do not work only if rewritten", sel_getName(_cmd));
}

+ (NSString *)reuseIdentifier
{
    return NSStringFromClass([self class]);
}
@end
