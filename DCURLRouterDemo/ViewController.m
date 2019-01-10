//
//  ViewController.m
//  DCURLRouterDemo
//
//  Created by Gome on 2019/1/10.
//  Copyright © 2019年 Gome. All rights reserved.
//

#import "ViewController.h"
#import "DCURLRouter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
   
}

-(void)clickAction{
    // 不需要拼接参数直接跳转
    [DCURLRouter pushURLString:@"dariel://twoitem" animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
