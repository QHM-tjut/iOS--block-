//
//  HMViewController.m
//  HMBlockTest
//
//  Created by 齐浩铭 on 2021/3/13.
//

#import "HMViewController.h"
#import <Masonry/Masonry.h>
#import "HMSecondViewController.h"

@interface HMViewController ()
 
@property (nonatomic,strong,readwrite) UILabel *label;
@property (nonatomic,strong,readwrite) UIButton *button;

@end

@implementation HMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setSubviewWithMessage:@"到下一页获取信息"];
}
//设置子视图
- (void)setSubviewWithMessage:(NSString *)string {
    if (string) {
        [self.label setText:string];
    }
    [self.view addSubview:self.label];
    [self.view addSubview:self.button];
    [_label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
    }];
    [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.centerY.mas_equalTo(self.view).with.mas_offset(100);
    }];
}

//按钮点击后执行的方法
- (void)buttonDidTouch {
    HMSecondViewController *secondViewController = [[HMSecondViewController alloc] init];
    secondViewController.bloak = ^(NSString *message){
        [self setSubviewWithMessage:message];
    };
    [self.navigationController pushViewController:secondViewController animated:YES];
}

#pragma mark getter-
- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] init];
        [_label setTextColor:[UIColor blackColor]];
    }
    return _label;
}

- (UIButton *)button {
    if (!_button){
        _button = [[UIButton alloc] init];
        [_button setTitle:@"下一页" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonDidTouch) forControlEvents:UIControlEventTouchUpInside];
        [_button setBackgroundColor:[UIColor redColor]];
    }
    return _button;
}

@end
