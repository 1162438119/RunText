//
//  ViewController.m
//  RunText
//
//  Created by mac on 15/12/9.
//  Copyright (c) 2015年 dqy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 20)];
    
    label.text = @"跑马灯";
    label.textColor = [UIColor redColor];
    label.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:label];
    
    
    
    CAKeyframeAnimation * keyAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    
    //运动路径
    CGMutablePathRef path = CGPathCreateMutable();
    
    CGPathMoveToPoint(path, NULL, [[UIScreen mainScreen] bounds].size.width , 100);
    
    CGPathAddLineToPoint(path, NULL, 300, 100);
    
    
    CGPathAddLineToPoint(path, NULL, 200, 100);
    
    CGPathAddLineToPoint(path, NULL, 100, 100);
    
    CGPathAddLineToPoint(path, NULL, 0, 100);
    
    
    
    /*
     
     
     keytime   关键帧动画  5个点
     
     头和尾必须是0  1
     
     中间按照比例算
     
     */
    
    [keyAnimation setKeyTimes:@[@0,@.3,@.7,@.9,@1]];
    
    [keyAnimation setPath:path];
    
    [keyAnimation setDuration:5.0f];
    
    [keyAnimation setRepeatCount:MAXFLOAT];
    
    CFRelease(path);
    
    [label.layer addAnimation:keyAnimation forKey:NULL];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
