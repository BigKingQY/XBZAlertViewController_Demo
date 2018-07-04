//
//  ViewController.m
//  XBZAlertView_Demo
//
//  Created by BigKing on 2018/7/4.
//  Copyright © 2018年 BigKing. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertController+XBZ.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)example1:(id)sender {
    
    [UIAlertController alertWithController:self title:@"这是我的标题，我会自动2s消失"];
    
}

- (IBAction)example2:(id)sender {
    
    [UIAlertController alertWithController:self title:@"这是我的标题，我会根据时间来让我消失" timeInterval:4.f];
    
}
- (IBAction)example3:(id)sender {
    
    [UIAlertController alertWithController:self title:@"我是带message的，我会自动2s消失" message:@"我是message"];
    
}
- (IBAction)example4:(id)sender {
    
    [UIAlertController alertWithController:self title:@"我是带message的，我根据时间来让我消失" message:@"我是message" timeInterval:3.f];
    
}
- (IBAction)example5:(id)sender {
    
    [UIAlertController alertWithController:self title:@"我是带按钮的" message:@"我还是个消息" actionTitles:@[@"确定", @"取消"] actionOne:^{
        
        NSLog(@"点了确定了");
        
    } actionTwo:^{
        
        NSLog(@"点了取消了");
        
    } alertStyle:UIAlertControllerStyleAlert];
    
}
- (IBAction)example6:(id)sender {
    
    [UIAlertController alertWithController:self title:@"我是能自定义action style的" message:@"我就是个消息" actionTitles:@[@"确定", @"取消"] actionStyles:@[@(UIAlertActionStyleDefault), @(UIAlertActionStyleDestructive)] actionOne:^{
        
        NSLog(@"点了确定了");
        
    } actionTwo:^{
        
        NSLog(@"点了取消了");
        
    } alertStyle:UIAlertControllerStyleAlert];
    
}

- (IBAction)example7:(id)sender {
    
    [UIAlertController alertWithController:self title:@"我是带按钮的" message:@"我还是个消息" actionTitles:@[@"确定", @"取消"] actionOne:^{
        
        NSLog(@"点了确定了");
        
    } actionTwo:^{
        
        NSLog(@"点了取消了");
        
    } alertStyle:UIAlertControllerStyleActionSheet];
    
}






@end
