//
//  UIImage+Image.m
//  ZYP_Runtime
//
//  Created by zhaoyunpeng on 2017/8/23.
//  Copyright © 2017年 zhaoyunpeng. All rights reserved.
//

#import "UIImage+Image.h"
#import <objc/message.h>

@implementation UIImage (Image)


/**
    类加载进内存时只会调用一次
    方法应先交换，再去调用
 */
+ (void)load {
    
    // 1.获取方法地址
    
    // 原方法地址
    Method imageNamedMethod = class_getClassMethod(self, @selector(imageNamed:));
    
    // 或
//    Method imageNameMethod2 = class_getInstanceMethod([self class], @selector(imageNamed:));
    
    // 新方法地址
    Method zyp_imageNamedMethod = class_getClassMethod(self, @selector(zyp_imageNamed:));
    
    
    // 2.交换方法
    method_exchangeImplementations(imageNamedMethod, zyp_imageNamedMethod);
    
}


+ (UIImage *)zyp_imageNamed:(NSString *)name {
    
    // 此时调用的方法 'zyp_imageNamed' 相当于调用系统的 'imageNamed' 方法,原因是在load方法中进行了方法交换
    UIImage *image = [UIImage zyp_imageNamed:name];
    
    if (image) {
        NSLog(@"imageNamed交换成功 - 图片读取成功");
    }
    else {
        NSLog(@"imageNamed交换成功 - 图片读取失败");
    }
    return image;
}

// 不能在分类中重写系统方法imageNamed，因为会把系统的功能给覆盖掉，而且分类中不能调用super




@end





