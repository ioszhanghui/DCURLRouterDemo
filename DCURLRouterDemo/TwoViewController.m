//
//  TwoViewController.m
//  DCURLRouterDemo
//
//  Created by Gome on 2019/1/10.
//  Copyright © 2019年 Gome. All rights reserved.
//

#import "TwoViewController.h"
#import "DCURLRouter.h"

#import "FourViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
    
}

-(void)clickAction{
    // 不需要拼接参数直接跳转
    
    // 可以将参数放入一个字典
//    NSDictionary *dict = @{@"userName":@"Hello", @"userid":@"32342"};
//    [DCURLRouter pushURLString:@"dariel://threeitem" query:dict animated:YES];
    
    [DCURLRouter pushURLString:@"detail://threeitem" animated:YES];
    
    NSURL * url = [NSURL URLWithString:@"detail://detail"];
    NSLog(@"scheme***%@",url.scheme);
    
//    // 直接把参数拼接在自定义url末尾
//    NSString *urlStr = @"dariel://threeitem?name=dariel&userid=213213";
//    [DCURLRouter pushURLString:urlStr animated:YES];
    
    // 如果当前控制器和要push的控制器是同一个,可以将replace设置为Yes,进行替换.
//    [DCURLRouter pushURLString:@"dariel://twoitem" query:dict animated:YES replace:YES];
    
//    NSLog(@"currentViewController****%@",[DCURLRouter sharedDCURLRouter].currentViewController);
//    NSLog(@"currentNavigationViewController***%@",[DCURLRouter sharedDCURLRouter].currentNavigationViewController);
//    FourViewController * fourth = [FourViewController new];
//    [DCURLRouter pushViewController:fourth animated:YES];
    
    [DCURLRouter pushURLString:@"https://www.jianshu.com/p/c3510aaab30a" animated:YES];
    
}


@end
