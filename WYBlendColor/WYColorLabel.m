//
//  WYColorLabel.m
//  WYBlendColor
//
//  Created by 王启镰 on 16/6/2.
//  Copyright © 2016年 wanglijinrong. All rights reserved.
//

#import "WYColorLabel.h"

@implementation WYColorLabel

- (void)drawRect:(CGRect)rect {
    // 1.绘制文字
    [super drawRect:rect];
    
    rect.size.width *= self.colorRatio;
    // 2.设置颜色
    [self.blendColor set];
    
    UIRectFillUsingBlendMode(rect, kCGBlendModeSourceIn);
}

- (void)setColorRatio:(CGFloat)colorRatio {
    _colorRatio = colorRatio;
    
    [self setNeedsDisplay];
}

@end
