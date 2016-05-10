//
//  CAGradientLayerTestViewController.m
//  Layer_test
//
//  Created by user on 16/5/10.
//  Copyright © 2016年 user. All rights reserved.
//

#import "CAGradientLayerTestViewController.h"

@interface CAGradientLayerTestViewController ()

@end

@implementation CAGradientLayerTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"渐变效果";
    //先添加一个UIimageView
    UIImageView *image = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:image];
    image.image = [UIImage imageNamed:@"2.jpeg"];
    
    CAGradientLayer *layer = [CAGradientLayer layer];
    layer.frame = image.bounds;
    layer.opacity = 0.5;
    layer.colors = @[(id)[UIColor redColor].CGColor, (id)[UIColor greenColor].CGColor, (id)[UIColor blueColor].CGColor];
    layer.locations = @[@0.2, @0.5, @0.8];
    layer.startPoint = CGPointZero;
    layer.endPoint =CGPointMake(0, 1);
    
    [image.layer addSublayer:layer];
}

@end
