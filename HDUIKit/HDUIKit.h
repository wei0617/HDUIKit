//
//  HDUIKit.h
//  HDUIKit
//
//  Created by 魏宏昌 on 16/5/3.
//  Copyright © 2016年 恒大互联网中心. All rights reserved.
//

#ifndef HDUIKit_h
#define HDUIKit_h

#ifdef __OBJC__
    #import "UIView+HDFrame.h"
    #import "UIView+HDAutoLayout.h"
    #import "UIView+HDBRemoveAllSubviews.h"
    #import "UIView+HDBConfig.h"
    #import "UIView+HDBUserInfo.h"
    #import "UIColor+HDBHex.h"
#endif

#define SP6WIDTH(w) ((w)/375.0*[UIScreen mainScreen].bounds.size.width)
#define SP6HEIGHT(h) ((h)/667.0*[UIScreen mainScreen].bounds.size.height)

#define UIColorFromRGB(r, g, b)\
    [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1.0f]
#define UIColorFromHex(hex)\
    [UIColor colorWithHex:(hex) alpha:1.0f]

#endif /* HDUIKit_h */
