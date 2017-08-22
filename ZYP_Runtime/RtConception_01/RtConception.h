//
//  RtConception.h
//  ZYP_Runtime
//
//  Created by zhaoyunpeng on 2017/8/22.
//  Copyright © 2017年 zhaoyunpeng. All rights reserved.
//  概念

#import <ZYP_HomeViewController/ZYP_HomeViewController.h>

@interface RtConception : ZYPBaseViewController

@end


/**
 
 runtime 概念
 
 1.runtime（简称运行时），是一套 纯C(C和汇编写的) 的API
 2.OC 就是 运行时机制，也就是在运行时候的一些机制，其中最主要的是 消息机制。
 3.对于 C 语言，函数的调用在编译的时候会决定调用哪个函数。
 4.OC的函数调用成为消息发送，属于 动态调用过程
 在编译的时候并不能决定真正调用哪个函数，只有在真正运行的时候才会根据函数的名称找到对应的函数来调用。
 5.在编译阶段，OC 可以 调用任何函数，即使这个函数并未实现，只要声明过就不会报错，只有当运行的时候才会报错，这是因为OC是运行时动态调用的。而 C 语言 调用未实现的函数 就会报错。
 
 */
