//
//  RtMessageMechanism.h
//  ZYP_Runtime
//
//  Created by zhaoyunpeng on 2017/8/22.
//  Copyright © 2017年 zhaoyunpeng. All rights reserved.
//  消息机制

#import <ZYP_HomeViewController/ZYP_HomeViewController.h>

@interface RtMessageMechanism : ZYPBaseViewController

@end

/**
    OC方法调用本质
        用 runtime 发送消息，OC 底层通过 runtime 实现
 */


// 消息机制原理：对象根据方法编号SEL去映射表查找对应的方法实现
// 每一个 OC 的方法，底层必然有一个与之对应的 runtime 方法


/**
    实现方式
        1.导入头文件 #import <objc/message.h>
        2.OC 解决消息机制方法提示步骤 build setting -> 搜索msg -> objc_msgSend（YES --> NO）
        3.解决ARC与MRC混编问题，添加 -fno-objc-arc
        4.最终生成消息机制，查看源码 cd -> main.m -> clang -rewrite-objc main.m 生成.opp文件
 
 */
