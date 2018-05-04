//
//  ViewController.m
//  FQGuidePageShowView
//
//  Created by mac on 2018/5/4.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ViewController.h"
#import "FQGuidePageShowManage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 创建控件
    [self creatControl];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // 引导视图
    [self showGuidePage];
}

- (void)creatControl
{
    // 底图
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    imgView.image = [UIImage imageNamed:@"backImg"];
    imgView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imgView];
}

- (void)showGuidePage
{
    // 判断是否已显示过
    if (![[NSUserDefaults standardUserDefaults] boolForKey:FQGuidePageHomeKey]) {
        // 显示
        [[FQGuidePageShowManage shareManager] showGuidePageWithType:FQGuidePageTypeHome completion:^{
            [[FQGuidePageShowManage shareManager] showGuidePageWithType:FQGuidePageTypeMajor];
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
