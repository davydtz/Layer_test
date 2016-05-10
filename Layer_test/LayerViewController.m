//
//  LayerViewController.m
//  LayerTest
//
//  Created by user on 16/5/9.
//  Copyright © 2016年 user. All rights reserved.
//

#import "LayerViewController.h"

@interface LayerViewController ()
@property (nonatomic, strong) CAShapeLayer *shapLayer;
@end

@implementation LayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIImageView *image1 = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    image1.image = [UIImage imageNamed:@"1.jpg"];
    [self.view addSubview:image1];
    
    
    UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    image.image = [UIImage imageNamed:@"2.jpeg"];
    [self.view addSubview:image];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 100, 100)];
    path.lineWidth = 1.f;
    
    
    
    self.shapLayer = [CAShapeLayer layer];
    _shapLayer.path = path.CGPath;
    _shapLayer.strokeColor = [UIColor greenColor].CGColor;
    _shapLayer.fillColor = [UIColor yellowColor].CGColor;
    _shapLayer.position = CGPointMake(0, 100);

//    [image.layer addSublayer:_shapLayer];
    image.layer.mask = _shapLayer;
    
    UISlider *slide = [[UISlider alloc] init];
    [self.view addSubview:slide];
    slide.frame = CGRectMake(0, 0, 300, 50);
    [slide addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
}


-(void)valueChanged:(UISlider *)slider{
    NSLog(@"%f",slider.value);
    _shapLayer.position = CGPointMake(0, slider.value * 100);
}
//-(void)animate{
//    CABasicAnimation *downAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
//    downAnimation.fromValue = [NSValue valueWithCGPoint:CGPointMake(0, 100)];
//    downAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(0, 0)];
//    downAnimation.duration = 3;
//    downAnimation.repeatCount = MAXFLOAT;
//    [_shapLayer addAnimation:downAnimation forKey:@"downAnimation"];
//}

@end
