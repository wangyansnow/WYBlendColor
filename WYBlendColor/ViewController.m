//
//  ViewController.m
//  WYBlendColor
//
//  Created by 王启镰 on 16/6/2.
//  Copyright © 2016年 wanglijinrong. All rights reserved.
//

#import "ViewController.h"
#import "WYColorLabel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet WYColorLabel *colorLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.colorLabel.blendColor = [UIColor orangeColor];
}


- (IBAction)sliderValueChanged:(UISlider *)sender {
    self.colorLabel.colorRatio = sender.value;
    
}

@end
