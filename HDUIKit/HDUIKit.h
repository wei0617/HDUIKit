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
#import "UIView+HDAutoLayout.h"
#import "UIView+HDFrame.h"
#endif

#define SP6WIDTH(w) ((w)/375.0*[UIScreen mainScreen].bounds.size.width)
#define SP6HEIGHT(h) ((h)/667.0*[UIScreen mainScreen].bounds.size.height)

#endif /* HDUIKit_h */
