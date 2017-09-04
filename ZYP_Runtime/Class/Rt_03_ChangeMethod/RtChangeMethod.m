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

    
    // image change btn
    UIButton *imgBtn = ({
        imgBtn = [[UIButton alloc]init];
        [imgBtn setTitle:@"UIImage 方法交换" forState:UIControlStateNormal];
        [imgBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [imgBtn setBackgroundColor:[UIColor orangeColor]];
        [imgBtn addTarget:self action:@selector(onClickImgBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:imgBtn];
        
        [imgBtn makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.view);
            make.centerY.equalTo(self.view).multipliedBy(3);
            make.width.equalTo(180);
            make.height.equalTo(50);
        }];

        imgBtn;
    });
    
    
    
    // textfield change btn
    UIButton *tfBtn = ({
        tfBtn = [[UIButton alloc]init];
        [tfBtn setTitle:@"UITextField 方法交换" forState:UIControlStateNormal];
        [tfBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [tfBtn setBackgroundColor:[UIColor orangeColor]];
        [tfBtn addTarget:self action:@selector(onClickTfBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:tfBtn];
        
//        [tfBtn makeConstraints:^(MASConstraintMaker *make) {
////            make.centerX.equalTo(self.view);
//            
//        }];
        
        tfBtn;
    });

    
    
}


- (void)onClickImgBtn:(UIButton *)button {
    [self imageChangeMethod];
}

- (void)onClickTfBtn:(UIButton *)button {
    [self textfieldChangeMethod];
}



#pragma mark - UIImage 方法交换

- (void)imageChangeMethod {
    [UIImage imageNamed:@"changeMethod"];
}

#pragma mark - UITextField 方法交换

- (void)textfieldChangeMethod {
    [UIImage imageNamed:@"changeMethod"];
}



@end
