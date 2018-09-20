//
//  keyframeAnimationViewController.m
//  CoreAnimation
//
//  Created by Ben Lv on 2018/9/19.
//  Copyright © 2018年 avatar. All rights reserved.
//

#import "keyframeAnimationViewController.h"

#define SCREEN_WIDTH self.view.bounds.size.width
#define SCREEN_HEIGHT self.view.bounds.size.height

@interface keyframeAnimationViewController ()<CAAnimationDelegate>
@property (weak, nonatomic) IBOutlet UIView *customView;

@end

@implementation keyframeAnimationViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"CAKeyframeAnimation";
    
    
}
#pragma mark - public methods

#pragma mark - private methods

- (IBAction)click:(UIButton *)sender {
    
    CAKeyframeAnimation *keyframeAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    
    if (sender.tag == 0) {
        NSValue *value0 = [NSValue valueWithCGPoint:CGPointMake(0, 200)];
        NSValue *value1 = [NSValue valueWithCGPoint:CGPointMake(150, 200)];
        NSValue *value2 = [NSValue valueWithCGPoint:CGPointMake(150, 400)];
        NSValue *value3 = [NSValue valueWithCGPoint:CGPointMake(300, 400)];
        NSValue *value4 = [NSValue valueWithCGPoint:CGPointMake(300, 200)];
        NSValue *value5 = [NSValue valueWithCGPoint:CGPointMake(SCREEN_WIDTH, 200)];
        keyframeAnimation.values = [NSArray arrayWithObjects:value0,value1,value2,value3,value4,value5, nil];
        keyframeAnimation.duration = 3.f;
        keyframeAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
        keyframeAnimation.delegate = self;
        [self.customView.layer addAnimation:keyframeAnimation forKey:nil];
        
    }
    else if (sender.tag == 1) {
        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(SCREEN_WIDTH/2-100, SCREEN_HEIGHT/2-100, 200, 200)];
        keyframeAnimation.path = path.CGPath;
        keyframeAnimation.duration = 2.0f;
        
        [self.customView.layer addAnimation:keyframeAnimation forKey:nil];
        
    }
    else if (sender.tag == 2) {
        CAKeyframeAnimation *anima = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation"];
        NSValue *value1 = [NSNumber numberWithFloat:-M_PI/180*4];
        NSValue *value2 = [NSNumber numberWithFloat:M_PI/180*4];
        NSValue *value3 = [NSNumber numberWithFloat:-M_PI/180*4];
        anima.values = @[value1,value2,value3];
        anima.repeatCount = MAXFLOAT;
        [self.customView.layer addAnimation:anima forKey:nil];
        
    }
    else{
        [self.customView.layer removeAllAnimations];
        
    }
    
    
    
  
    
}

#pragma mark - delegate
- (void)animationDidStart:(CAAnimation *)anim {
    
    NSLog(@"动画开始");
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    NSLog(@"动画结束");
    
}

@end
