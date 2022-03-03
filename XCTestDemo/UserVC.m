//
//  UserVC.m
//  XCTestDemo
//
//  Created by zhumingke on 2022/3/2.
//

#import "UserVC.h"
#import <Masonry/Masonry.h>
#import "HomeVC.h"

@interface UserVC ()

@property (nonatomic , strong) UITextField *accountField;
@property (nonatomic , strong) UITextField *pwdField;

@end

@implementation UserVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.orangeColor;
    
    self.accountField = [[UITextField alloc] init];
    self.accountField.placeholder = @"账号";
    self.accountField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.accountField];
    [self.accountField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.mas_equalTo(120);
        make.left.mas_equalTo(50);
        make.right.mas_equalTo(-50);
    }];
    self.accountField.accessibilityLabel = @"login account";
    
    self.pwdField = [[UITextField alloc] init];
    self.pwdField.placeholder = @"密码";
    self.pwdField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.pwdField];
    [self.pwdField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.left.right.equalTo(self.accountField);
        make.top.equalTo(self.accountField.mas_bottom).offset(50);
    }];
    self.pwdField.accessibilityLabel = @"login pwd";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"登录" forState:UIControlStateNormal];
    [btn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    btn.backgroundColor = UIColor.cyanColor;
    [btn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.pwdField.mas_bottom).offset(100);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(40);
    }];
    [btn setAccessibilityLabel:@"login sender"];
}

- (void)login {
    if ([self.accountField.text isEqualToString:@"User@example.com"] && [self.pwdField.text isEqualToString:@"123456"]) {
        HomeVC *vc = [[HomeVC alloc] init];
        [UIApplication sharedApplication].keyWindow.rootViewController = vc;
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
    
    [self.accountField resignFirstResponder];
}

@end
