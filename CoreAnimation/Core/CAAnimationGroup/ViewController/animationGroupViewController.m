//
//  animationGroupViewController.m
//  CoreAnimation
//
//  Created by Ben Lv on 2018/9/20.
//  Copyright © 2018年 avatar. All rights reserved.
//

#import "animationGroupViewController.h"

@interface animationGroupViewController ()
@property (weak, nonatomic) IBOutlet UIView *customView;

@end

@implementation animationGroupViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"CAAnimationGroup";
     CAKeyframeAnimation *keyframeAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    NSValue *value0 = [NSValue valueWithCGPoint:CGPointMake(0, 200)];
    NSValue *value1 = [NSValue valueWithCGPoint:CGPointMake(150, 200)];
    NSValue *value2 = [NSValue valueWithCGPoint:CGPointMake(150, 400)];
    NSValue *value3 = [NSValue valueWithCGPoint:CGPointMake(300, 400)];
    NSValue *value4 = [NSValue valueWithCGPoint:CGPointMake(300, 200)];
    NSValue *value5 = [NSValue valueWithCGPoint:CGPointMake(self.view.bounds.size.width, 200)];
    keyframeAnimation.values = [NSArray arrayWithObjects:value0,value1,value2,value3,value4,value5, nil];
    keyframeAnimation.duration = 4.f;
    keyframeAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
//    缩放
    CABasicAnimation *anima = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    anima.fromValue = [NSNumber numberWithFloat:0.8f];
    anima.toValue = [NSNumber numberWithFloat:2.0f];
    
//    旋转动画
    CABasicAnimation *anima2 = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    anima2.toValue = [NSNumber numberWithFloat:M_PI*4];
    
    //组动画
    CAAnimationGroup *groupAnimation = [CAAnimationGroup animation];
    groupAnimation.animations = [NSArray arrayWithObjects:keyframeAnimation,anima,anima2, nil];
    groupAnimation.duration = 4.f;
    [self.customView.layer addAnimation:groupAnimation forKey:nil];
    
    
    
}


@end
