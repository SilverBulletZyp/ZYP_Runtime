//
//  RtMessageMechanism.m
//  ZYP_Runtime
//
//  Created by zhaoyunpeng on 2017/8/22.
//  Copyright © 2017年 zhaoyunpeng. All rights reserved.
//

#import "RtMessageMechanism.h"
#import "RtMsgMecModel.h"
#import <objc/message.h>

@interface RtMessageMechanism ()

@end

@implementation RtMessageMechanism

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    /**
        对比分析OC与runtime
     */
    
    
//    [self getOCCode];
    [self getRuntimeCode];


}

#pragma mark - OC 代码

- (void)getOCCode {
    RtMsgMecModel *model = [RtMsgMecModel alloc];
    model = [model init];
    [model getClassName];
}

#pragma mark - Runtime 代码

- (void)getRuntimeCode {
    
    id tempModel = objc_msgSend(objc_getClass("RtMsgMecModel"), sel_registerName("alloc"));
    RtMsgMecModel *model = objc_msgSend(tempModel, sel_registerName("init"));
    objc_msgSend(model, sel_registerName("getClassName"));
    
    // 本质:让类对象发送消息
    // objc_msgSend([RtMsgMecModel class], @selector(getClassName));

}

/**
 
    runtime 消息机制方法调用流程
    调用方法
        对象方法:保存到类对象的方法列表 
        类方法:保存到元类(Meta Class)中方法列表
 
    1.OC 在向一个对象发送消息时，runtime 库会根据对象的 isa指针找到该对象对应的类或其父类中查找方法
    2.注册方法编号（这里用方法编号的好处，可以快速查找）
    3.根据方法编号去查找对应方法。
    4.找到只是最终函数实现地址，根据地址去方法区调用对应函数
 
    补充：一个objc 对象的 isa 的指针指向什么？有什么作用？
    每一个对象内部都有一个isa指针，这个指针是指向它的真实类型，根据这个指针就能知道将来调用哪个类的方法

 */










@end
