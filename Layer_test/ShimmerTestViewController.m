//
//  ShimmerTestViewController.m
//  Layer_test
//
//  Created by user on 16/5/10.
//  Copyright © 2016年 user. All rights reserved.
//

#import "ShimmerTestViewController.h"
#import "FBShimmeringView.h"
@interface ShimmerTestViewController ()

@end

@implementation ShimmerTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
//    UILabel *loadingLabel = [[UILabel alloc] initWithFrame:shimmeringView.bounds];
//    loadingLabel.textAlignment = NSTextAlignmentCenter;
//    loadingLabel.text = @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈";
//    
//    loadingLabel.textColor = [UIColor whiteColor];
    
    // Start shimmering.
    
    FBShimmeringView *shimmeringView = [[FBShimmeringView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:shimmeringView];
    
    
    UIImageView *image = [[UIImageView alloc] initWithFrame:shimmeringView.bounds];
    image.image = [UIImage imageNamed:@"2.jpeg"];
    
    
    
    shimmeringView.contentView = image;
    shimmeringView.shimmering = YES;
}

@end
