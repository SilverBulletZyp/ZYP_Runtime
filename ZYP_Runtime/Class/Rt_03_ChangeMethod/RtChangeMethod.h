//
//  RtChangeMethod.h
//  ZYP_Runtime
//
//  Created by zhaoyunpeng on 2017/8/23.
//  Copyright © 2017年 zhaoyunpeng. All rights reserved.
//  交换方法

#import <ZYP_HomeViewController/ZYP_HomeViewController.h>

@interface RtChangeMethod : ZYPBaseViewController

@end

// 给方法添加额外功能

/**
 
    如: [UIImage imageNamed:@"image"]; 给系统方法读取图片，添加是否成功的响应
        
        法1.继承系统的类，重写方法(需导入文件修改内容)
        法2.使用 runtime，交换方法
 
 
    步骤：

        1.给系统的方法添加分类
        2.自己实现一个带有扩展功能的方法
        3.交换方法,只需要交换一次
 
 */









