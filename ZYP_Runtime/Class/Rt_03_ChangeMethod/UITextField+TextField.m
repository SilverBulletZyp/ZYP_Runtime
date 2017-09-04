//
//  UITextField+TextField.m
//  ZYP_Runtime
//
//  Created by zhaoyunpeng on 2017/8/23.
//  Copyright © 2017年 zhaoyunpeng. All rights reserved.
//

#import "UITextField+TextField.h"

@implementation UITextField (TextField)


+ (void)load {
    Method setPlaceholderMethod = class_getClassMethod(self, @selector(setPlaceholder:));
    Method setZypPlaceholderMethod = class_getClassMethod(self, @selector(set_zypPlaceholder:));
    
    method_exchangeImplementations(setPlaceholderMethod, setZypPlaceholderMethod);
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    objc_setAssociatedObject(self, @"placeholderColor", placeholderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

    
    
    
    UILabel *label = [self valueForKey:@"placeholderLabel"];
    label.textColor = placeholderColor;
    
    
    
}

- (UIColor *)placeholderColor {
    // 获取类成员属性
    return objc_getAssociatedObject(self, @"placeholderColor");
}


- (void)set_zypPlaceholder:(NSString *)placeholder {
    [self set_zypPlaceholder:placeholder];
}

@end
