//
//  CAEmitterLayerTestViewController.m
//  Layer_test
//
//  Created by user on 16/5/10.
//  Copyright © 2016年 user. All rights reserved.
//

#import "CAEmitterLayerTestViewController.h"

@interface CAEmitterLayerTestViewController ()

@end

@implementation CAEmitterLayerTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //create particle emitter layer
    CAEmitterLayer *emitter = [CAEmitterLayer layer];
    emitter.frame = self.view.bounds;
    [self.view.layer addSublayer:emitter];
    
    //configure emitter
    emitter.renderMode = kCAEmitterLayerUnordered;
    emitter.emitterPosition = CGPointMake(emitter.frame.size.width / 2.0, emitter.frame.size.height - 10);
    
    //create a particle template
    CAEmitterCell *cell = [[CAEmitterCell alloc] init];
    {
        cell.contents = (__bridge id)[UIImage imageNamed:@"star.png"].CGImage;
        cell.birthRate = 100;
        cell.lifetime = 5.0;
        //    cell.color = [UIColor whiteColor].CGColor;
        cell.alphaSpeed = -0.4;
        cell.velocity = 100;
        cell.velocityRange = 100;
        cell.emissionRange = M_PI /2;
        cell.emissionLatitude = 0;
        cell.emissionLongitude= -M_PI / 2;
    }
    CAEmitterCell *cell1 = [[CAEmitterCell alloc] init];
    {
        cell1.contents = (__bridge id)[UIImage imageNamed:@"star1.png"].CGImage;
        cell1.birthRate = 2;
        cell1.lifetime = 5.0;
        //    cell.color = [UIColor whiteColor].CGColor;
        cell1.alphaSpeed = -0.4;
        cell1.velocity = 100;
        cell1.velocityRange = 100;
        cell1.emissionRange = M_PI * 2;
    }
    //add particle template to emitter
    emitter.emitterCells = @[cell];
    
    
}

@end
