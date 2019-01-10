//
//  ThreeViewController.m
//  DCURLRouterDemo
//
//  Created by Gome on 2019/1/10.
//  Copyright © 2019年 Gome. All rights reserved.
//

#import "ThreeViewController.h"
#import "UIViewController+DCURLRouter.h"
#import "NSString+Filter.h"
#import "DCURLRouter.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    NSLog(@"拿到URL:%@", [[self.originUrl absoluteString] getURLParameters]);
    NSLog(@"params***%@",self.params);
    NSLog(@"URL路径:%@", self.path);
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 300, 100, 100);
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
}

-(void)clickAction{
    
    /** pop掉一层控制器 */
//    [DCURLRouter popViewControllerAnimated:YES];
     /** pop掉两层控制器 */
//    [DCURLRouter popTwiceViewControllerAnimated:YES];
    /** pop掉times层控制器 */
//    [DCURLRouter popViewControllerWithTimes:2 animated:YES];
    /** pop到根层控制器 */
    [DCURLRouter popToRootViewControllerAnimated:YES];
    
}
@end
