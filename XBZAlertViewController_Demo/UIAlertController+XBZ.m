//
//  UIAlertController+XBZ.m
//  XBZAlertViewController_Demo
//
//  Created by BigKing on 2018/7/4.
//  Copyright © 2018年 BigKing. All rights reserved.
//

#import "UIAlertController+XBZ.h"

NSTimeInterval kDefaultTimerInterval = 2.f;

@implementation UIAlertController (XBZ)


+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(NSString *)title {
    
    [self alertWithController:controller title:title timeInterval:kDefaultTimerInterval];
    
}

+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(NSString *)title
               timeInterval:(NSTimeInterval)timerInerval {
    
    [self alertWithController:controller title:title message:@"" timeInterval:timerInerval];
    
}

+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(NSString *)title
                    message:(NSString *)message {
    
    [self alertWithController:controller title:title message:message timeInterval:kDefaultTimerInterval];
    
}


+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(NSString *)title
                    message:(NSString *)message
               timeInterval:(NSTimeInterval)timerInerval {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    [NSTimer scheduledTimerWithTimeInterval:timerInerval target:self selector:@selector(dismissAlertController:) userInfo:alertController repeats:NO];
    
    [controller presentViewController:alertController animated:YES completion:nil];
}

+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(NSString *)title
                    message:(NSString *)message
               actionTitles:(nonnull NSArray<NSString *> *)titles
                  actionOne:(ActionOne)actionOne
                  actionTwo:(ActionTwo)actionTwo {
    
    [self alertWithController:controller title:title message:message actionTitles:titles actionOne:actionOne actionTwo:actionTwo isAlertStyle:YES];
}

+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(NSString *)title
                    message:(NSString *)message
               actionTitles:(nonnull NSArray<NSString *> *)titles
                  actionOne:(ActionOne)actionOne
                  actionTwo:(ActionTwo)actionTwo
               isAlertStyle:(BOOL)isAlertStyle; {
    
    [self alertWithController:controller title:title message:message actionTitles:titles actionStyles:@[@(UIAlertActionStyleDefault), @(UIAlertActionStyleDefault)] actionOne:actionOne actionTwo:actionTwo isAlertStyle:isAlertStyle];
    
}


+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(NSString *)title
                    message:(NSString *)message
               actionTitles:(nonnull NSArray<NSString *> *)titles
               actionStyles:(NSArray<NSNumber *> *)actionStyles
                  actionOne:(ActionOne)actionOne
                  actionTwo:(ActionOne)actionTwo {
    
    [self alertWithController:controller title:title message:message actionTitles:titles actionStyles:actionStyles actionOne:actionOne actionTwo:actionTwo isAlertStyle:YES];
    
}

+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(NSString *)title
                    message:(NSString *)message
               actionTitles:(nonnull NSArray<NSString *> *)titles
               actionStyles:(NSArray<NSNumber *> *)actionStyles
                  actionOne:(ActionOne)actionOne
                  actionTwo:(ActionOne)actionTwo
               isAlertStyle:(BOOL)isAlertStyle {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:isAlertStyle ? UIAlertControllerStyleAlert : UIAlertControllerStyleActionSheet];
    
    switch (titles.count) {
            break;
        case 1:
        {
            UIAlertActionStyle style = actionStyles.firstObject ? [actionStyles.firstObject integerValue] : UIAlertActionStyleDefault;
            [alertController addAction:[UIAlertAction actionWithTitle:titles.firstObject style:style handler:^(UIAlertAction * _Nonnull action) {
                if (actionOne) {
                    actionOne();
                }
            }]];
        }
            break;
        case 2:
        {
            UIAlertActionStyle styleOne = actionStyles.firstObject ? [actionStyles.firstObject integerValue] : UIAlertActionStyleDefault;
            UIAlertActionStyle styleTwo = actionStyles.lastObject ? [actionStyles.lastObject integerValue] : UIAlertActionStyleDefault;
            [alertController addAction:[UIAlertAction actionWithTitle:titles.firstObject style:styleOne handler:^(UIAlertAction * _Nonnull action) {
                if (actionOne) {
                    actionOne();
                }
            }]];
            [alertController addAction:[UIAlertAction actionWithTitle:titles.lastObject style:styleTwo handler:^(UIAlertAction * _Nonnull action) {
                if (actionTwo) {
                    actionTwo();
                }
            }]];
        }
            break;
        default:
            break;
    }
    
    
    if (!isAlertStyle) {
        [alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:NULL]];
    }
    
    [controller presentViewController:alertController animated:YES completion:nil];
    
}

+ (void)dismissAlertController:(NSTimer *)timer {
    
    UIAlertController *alertController = timer.userInfo;
    
    [alertController dismissViewControllerAnimated:YES completion:nil];
    
    [timer invalidate];
    timer = nil;
}

@end
