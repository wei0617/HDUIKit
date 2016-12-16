//
//  UIView+HDBRemoveAllSubviews.m
//  HDBUIKit
//
//  Created by 孙华 on 15/12/8.
//  Copyright © 2015年 恒大互联网中心. All rights reserved.
//

#import "UIView+HDBRemoveAllSubviews.h"

@implementation UIView (HDBRemoveAllSubviews)
- (void)HDB_removeAllSubviews {
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
}
@end
