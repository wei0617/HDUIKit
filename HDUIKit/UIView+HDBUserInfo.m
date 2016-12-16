//
//  UIView+HDBUserInfo.m
//  HDBUIKit
//
//  Created by 孙华 on 15/12/8.
//  Copyright © 2015年 恒大互联网中心. All rights reserved.
//

#import "UIView+HDBUserInfo.h"
#import <objc/runtime.h>

@implementation UIView (HDBUserInfo)
- (void)setUserInfo:(id)userInfo
{
    objc_setAssociatedObject(self, "userinfo", userInfo, OBJC_ASSOCIATION_RETAIN);
}

- (id)userInfo
{
    return objc_getAssociatedObject(self, "userinfo");
}
@end
