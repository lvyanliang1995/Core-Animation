//
//  baseAnimationViewController.m
//  CoreAnimation
//
//  Created by Ben Lv on 2018/9/19.
//  Copyright © 2018年 avatar. All rights reserved.
//

#import "baseAnimationViewController.h"

@interface baseAnimationViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;


@end

@implementation baseAnimationViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"CABasicAnimation";
    
}


#pragma mark - private methods

- (IBAction)buutonClick:(UIButton *)sender {
    CABasicAnimation *basicAnimation = [[CABasicAnimation alloc] init];
    switch (sender.tag) {
        case 0:
            basicAnimation.byValue = @(10);
            basicAnimation.keyPath = @"position.x";
            break;
            case 1:
            basicAnimation.keyPath = @"transform.rotation.z";
            basicAnimation.byValue = @(M_PI);
//            basicAnimation.duration = 3.f;
//            basicAnimation.repeatCount = MAXFLOAT;
            break;
            case 2:
            basicAnimation.keyPath = @"transform.scale";
            basicAnimation.byValue = @(1.1);
            break;
            case 3:
            basicAnimation.keyPath = @"opacity";
            basicAnimation.fromValue = @(1);
            basicAnimation.toValue = @(0.2f);
            basicAnimation.duration = 2.0;
            break;
            case 4:
            basicAnimation.keyPath = @"backgroundColor";
            basicAnimation.toValue = (id)[UIColor greenColor].CGColor;
            basicAnimation.duration = 2.0;
            
            break;
            case 5:
            [self.button.layer removeAllAnimations];
            
            break;
        default:
            break;
    }
    // 不希望回到原来的位置
    basicAnimation.fillMode = kCAFillModeBoth;
    basicAnimation.removedOnCompletion = NO;
    
    [self.button.layer addAnimation:basicAnimation forKey:nil];
    
}



@end
