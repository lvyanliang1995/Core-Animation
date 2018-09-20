//
//  ViewController.m
//  CoreAnimation
//
//  Created by Ben Lv on 2018/9/19.
//  Copyright © 2018年 avatar. All rights reserved.
//

#import "ViewController.h"

#import "baseAnimationViewController.h"
#import "keyframeAnimationViewController.h"
#import "animationGroupViewController.h"
#import "transitionViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSArray *dateSouce;
@end

@implementation ViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"CoreAnimation";
    self.title = @"Core Animation";
    [self.view addSubview:self.tableView];
    
}
#pragma mark - public methods

#pragma mark - private methods

#pragma mark - getter && setter

#pragma mark - lazy loading
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
        _tableView.delegate = self;
        _tableView.dataSource = self;
//        [_tableView setContentInset:UIEdgeInsetsMake(20, 0, 0, 0)];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
    }
    return _tableView;
    
}

- (NSArray *)dateSouce {
    if (!_dateSouce) {
        return @[@"BaseAnimation",@"关键帧动画（CAKeyframeAnimation",@"组动画（CAAnimationGroup",@"过渡动画（CATransition)"];
    }
    return _dateSouce;
    
}

#pragma mark - dataSouce
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dateSouce.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *str = self.dateSouce[indexPath.row];
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = str;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 0) {
        baseAnimationViewController *ctr = [[baseAnimationViewController alloc] init];
          self.navigationController.navigationBar.topItem.title = @"";
        [self.navigationController pushViewController:ctr animated:YES];
        
    }
    else if (indexPath.row == 1) {
        keyframeAnimationViewController *ctr = [[keyframeAnimationViewController alloc] init];
        self.navigationController.navigationBar.topItem.title = @"";
        [self.navigationController pushViewController:ctr animated:YES];
        
    }else if (indexPath.row == 2) {
        animationGroupViewController *ctr = [[animationGroupViewController alloc] init];
        self.navigationController.navigationBar.topItem.title = @"";
        [self.navigationController pushViewController:ctr animated:YES];
    }
    else{
        transitionViewController *ctr = [[transitionViewController alloc] init];
        self.navigationController.navigationBar.topItem.title = @"";
        [self.navigationController pushViewController:ctr animated:YES];
    }
    
}


@end
