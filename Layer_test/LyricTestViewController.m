//
//  LyricTestViewController.m
//  Layer_test
//
//  Created by user on 16/5/10.
//  Copyright © 2016年 user. All rights reserved.
//

#import "LyricTestViewController.h"

@interface LyricTestViewController ()

@property (nonatomic, strong) CAShapeLayer *shapLayer;

@end

@implementation LyricTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    UILabel *whiteLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, 320, 40)];
    whiteLabel.text = @"这是一句歌词这是一句歌词这是一句歌词";
    whiteLabel.textAlignment = NSTextAlignmentCenter;
    whiteLabel.textColor = [UIColor whiteColor];
    [self.view addSubview:whiteLabel];
    
    UILabel *greenLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, 320, 40)];
    greenLabel.text = @"这是一句歌词这是一句歌词这是一句歌词";
    greenLabel.textAlignment = NSTextAlignmentCenter;
    greenLabel.textColor = [UIColor greenColor];
    [self.view addSubview:greenLabel];
    
    UISlider *slide = [[UISlider alloc] init];
    [self.view addSubview:slide];
    slide.frame = CGRectMake(0, 0, 300, 50);
    [slide addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 50, 40)];
    path.lineWidth = 1.f;
    self.shapLayer = [CAShapeLayer layer];
    _shapLayer.path = path.CGPath;
    _shapLayer.strokeColor = [UIColor greenColor].CGColor;
    _shapLayer.fillColor = [UIColor yellowColor].CGColor;
    _shapLayer.position = CGPointMake(0, 0);
    _shapLayer.anchorPoint = CGPointZero;
    
    //    [image.layer addSublayer:_shapLayer];
    greenLabel.layer.mask = _shapLayer;

}


-(void)valueChanged:(UISlider *)slider{
    _shapLayer.position = CGPointMake(slider.value*320, 0);
}
@end
