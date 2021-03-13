//
//  HMSecondViewController.m
//  HMBlockTest
//
//  Created by 齐浩铭 on 2021/3/13.
//

#import "HMSecondViewController.h"
#import <Masonry/Masonry.h>


@interface HMSecondViewController ()

@property (nonatomic,strong,readwrite) UITextField *textField;
@property (nonatomic,strong,readwrite) UIButton *button;

@end

@implementation HMSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setSubview];
}
//设置页面的布局
- (void)setSubview {
    __weak __typeof(self) weakSelf = self;
    [self.view addSubview:weakSelf.textField];
    [self.view addSubview:weakSelf.button];
    [self.textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(300, 50));
        make.center.equalTo(self.view);
    }];
    [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.view);
        make.centerY.mas_equalTo(self.view).with.mas_offset(100);
    }];
}

//按钮点击后执行的方法
- (void)buttonDidTouch {
    self.bloak(self.textField.text);
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark getter-
- (UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc] init];
        [_textField setBorderStyle:UITextBorderStyleBezel];
    }
    return _textField;
}

- (UIButton *)button {
    if (!_button){
        _button = [[UIButton alloc] init];
        [_button setTitle:@"返回" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonDidTouch) forControlEvents:UIControlEventTouchUpInside];
        [_button setBackgroundColor:[UIColor redColor]];
    }
    return _button;
}

@end
