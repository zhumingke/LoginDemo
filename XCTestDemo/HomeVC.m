//
//  HomeVC.m
//  XCTestDemo
//
//  Created by zhumingke on 2022/3/2.
//

#import "HomeVC.h"
#import <Masonry/Masonry.h>

@interface HomeVC ()
@property (nonatomic , copy) NSString *name;
@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    self.name = @"small.red";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"换底色" forState:UIControlStateNormal];
    [btn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(bgColor) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(100);
    }];
    [btn setAccessibilityLabel:@"bgcolor"];
}

- (BOOL)checkNumber:(NSInteger)number {
    return number >= 60;
}

- (void)bgColor {
    self.view.backgroundColor = UIColor.redColor;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
