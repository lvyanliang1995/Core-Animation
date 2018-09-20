//
//  transitionViewController.m
//  CoreAnimation
//
//  Created by Ben Lv on 2018/9/20.
//  Copyright © 2018年 avatar. All rights reserved.
//

#import "transitionViewController.h"

@interface transitionViewController ()
{
    int _index;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation transitionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"CATransition";
    _index = 0;
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d",_index]];
    
}


- (IBAction)click:(UIButton *)sender {
    switch (sender.tag) {
        case 0:
            [self fade];
            break;
        case 1:
            [self moveIn];
            break;
        case 2:
            [self push];
            break;
        case 3:
            [self reveal];
            break;
        case 4:
            [self cube];
            break;
        case 5:
            [self suckEffect];
            break;
        case 6:
            [self rippleEffectAnimation];
            break;
        case 7:
            [self pageCurl];
            break;
        case 8:
            [self oglFlipAnimation];
            break;
        case 9:
            [self cameraOpen];
            break;
        case 10:
            [self cameraClose];
            break;
        case 11:
            
            break;
        default:
            break;
    }
    
    
    
}

- (void)fade {
    [self imageChnage];
    CATransition *transition = [CATransition animation];
    transition.type = kCATransitionFade;//设置动画的类型
    transition.subtype = kCATransitionFromRight; //设置动画的方向
    //anima.startProgress = 0.3;//设置动画起点
    //anima.endProgress = 0.8;//设置动画终点
    transition.duration = 1.0f;
    
    [self.imageView.layer addAnimation:transition forKey:nil];
    
}

- (void)moveIn {
    [self imageChnage];
    CATransition *transition = [CATransition animation];
    transition.type = kCATransitionMoveIn;//设置动画的类型
    transition.subtype = kCATransitionFromRight; //设置动画的方向
    //anima.startProgress = 0.3;//设置动画起点
    //anima.endProgress = 0.8;//设置动画终点
    transition.duration = 1.0f;
    
    [self.imageView.layer addAnimation:transition forKey:nil];
    
}
- (void)push {
    [self imageChnage];
    CATransition *transition = [CATransition animation];
    transition.type = kCATransitionPush;//设置动画的类型
    transition.subtype = kCATransitionFromRight; //设置动画的方向
    //anima.startProgress = 0.3;//设置动画起点
    //anima.endProgress = 0.8;//设置动画终点
    transition.duration = 1.0f;
    
    [self.imageView.layer addAnimation:transition forKey:nil];

}

- (void)reveal {
    
    [self imageChnage];
    CATransition *transition = [CATransition animation];
    transition.type = kCATransitionReveal;//设置动画的类型
    transition.subtype = kCATransitionFromRight; //设置动画的方向
    //anima.startProgress = 0.3;//设置动画起点
    //anima.endProgress = 0.8;//设置动画终点
    transition.duration = 1.0f;
    
    [self.imageView.layer addAnimation:transition forKey:nil];
    
}


#pragma mark - 私有Api
- (void)cube {
    [self imageChnage];
    CATransition *transition = [CATransition animation];
    transition.type = @"cube";//设置动画的类型
    transition.subtype = kCATransitionFromRight; //设置动画的方向
    //anima.startProgress = 0.3;//设置动画起点
    //anima.endProgress = 0.8;//设置动画终点
    transition.duration = 1.0f;
    
    [self.imageView.layer addAnimation:transition forKey:nil];
    
    
}

- (void)suckEffect {
    
    [self imageChnage];
    CATransition *transition = [CATransition animation];
    transition.type = @"suckEffect";//设置动画的类型
    transition.subtype = kCATransitionFromRight; //设置动画的方向
    //anima.startProgress = 0.3;//设置动画起点
    //anima.endProgress = 0.8;//设置动画终点
    transition.duration = 1.0f;
    
    [self.imageView.layer addAnimation:transition forKey:nil];
    
}

- (void)oglFlipAnimation {
    
    [self imageChnage];
    CATransition *transition = [CATransition animation];
    transition.type = @"oglFlip";//设置动画的类型
    transition.subtype = kCATransitionFromRight; //设置动画的方向
    //anima.startProgress = 0.3;//设置动画起点
    //anima.endProgress = 0.8;//设置动画终点
    transition.duration = 1.0f;
    
    [self.imageView.layer addAnimation:transition forKey:nil];
    
}

- (void)rippleEffectAnimation {
    
    [self imageChnage];
    CATransition *transition = [CATransition animation];
    transition.type = @"rippleEffect";//设置动画的类型
    transition.subtype = kCATransitionFromRight; //设置动画的方向
    //anima.startProgress = 0.3;//设置动画起点
    //anima.endProgress = 0.8;//设置动画终点
    transition.duration = 1.0f;
    
    [self.imageView.layer addAnimation:transition forKey:nil];
    
}

- (void)pageCurl {
    
    [self imageChnage];
    CATransition *transition = [CATransition animation];
    transition.type = @"pageCurl";//设置动画的类型
    transition.subtype = kCATransitionFromRight; //设置动画的方向
    //anima.startProgress = 0.3;//设置动画起点
    //anima.endProgress = 0.8;//设置动画终点
    transition.duration = 1.0f;
    
    [self.imageView.layer addAnimation:transition forKey:nil];
    
}

- (void)cameraOpen {
    
    [self imageChnage];
    CATransition *transition = [CATransition animation];
    transition.type = @"cameraIrisHollowOpen";//设置动画的类型
    transition.subtype = kCATransitionFromRight; //设置动画的方向
    //anima.startProgress = 0.3;//设置动画起点
    //anima.endProgress = 0.8;//设置动画终点
    transition.duration = 1.0f;
    
    [self.imageView.layer addAnimation:transition forKey:nil];
}

- (void)cameraClose {
    [self imageChnage];
    CATransition *transition = [CATransition animation];
    transition.type = @"cameraIrisHollowClose";//设置动画的类型
    transition.subtype = kCATransitionFromRight; //设置动画的方向
    //anima.startProgress = 0.3;//设置动画起点
    //anima.endProgress = 0.8;//设置动画终点
    transition.duration = 1.0f;
    
    [self.imageView.layer addAnimation:transition forKey:nil];
    
}

- (void)imageChnage {
    
    _index++;
    if (_index ==  3) {
        _index = 0;
    }
    self.imageView.image =[UIImage imageNamed:[NSString stringWithFormat:@"%d",_index]];
    
}



@end
