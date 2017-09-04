//
//  UITextField+TextField.h
//  ZYP_Runtime
//
//  Created by zhaoyunpeng on 2017/8/23.
//  Copyright © 2017年 zhaoyunpeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
@interface UITextField (TextField)

@property (nonatomic) UIColor *placeholderColor;

- (void)set_zypPlaceholder:(NSString *)placeholder;

@end
