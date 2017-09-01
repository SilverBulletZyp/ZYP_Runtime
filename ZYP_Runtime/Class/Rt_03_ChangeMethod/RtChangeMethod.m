//
//  RtChangeMethod.m
//  ZYP_Runtime
//
//  Created by zhaoyunpeng on 2017/8/23.
//  Copyright © 2017年 zhaoyunpeng. All rights reserved.
//

#import "RtChangeMethod.h"
#import "UIImage+Image.h"

@interface RtChangeMethod ()

@end

@implementation RtChangeMethod

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    UIButton *button1 = [[UIButton alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 120)/2, 120, 120, 50)];
    [button1 setTitle:@"图片方法交换" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button1 setBackgroundColor:[UIColor orangeColor]];
    [button1 addTarget:self action:@selector(onClickButton1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    

    
}


- (void)onClickButton1:(UIButton *)button {
    [self imageChangeMethod];
}




#pragma mark - 图片方法交换

- (void)imageChangeMethod {
    [UIImage imageNamed:@"changeMethod"];
}



@end
