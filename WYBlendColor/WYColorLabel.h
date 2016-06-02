//
//  WYColorLabel.h
//  WYBlendColor
//
//  Created by 王启镰 on 16/6/2.
//  Copyright © 2016年 wanglijinrong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WYColorLabel : UILabel

///  变色比例  0~1
@property (nonatomic, assign) CGFloat colorRatio;
///  混合颜色
@property (nonatomic, strong) UIColor *blendColor;

@end
