//
//  UIAlertController+XBZ.h
//  XBZAlertViewController_Demo
//
//  Created by BigKing on 2018/7/4.
//  Copyright © 2018年 BigKing. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ActionOne)(void);

typedef void(^ActionTwo)(void);

@interface UIAlertController (XBZ)

/**
 只显示标题，默认2s后dismiss
 
 @param controller 当前弹出的控制器
 @param title 标题
 */
+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(nonnull NSString *)title;


/**
 只显示标题，自定义dismiss时间
 
 @param controller 当前弹出的控制器
 @param title 标题
 @param timerInerval dismiss时间
 */
+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(nonnull NSString *)title
               timeInterval:(NSTimeInterval)timerInerval;

/**
 显示标题+消息，默认显示2s后dismiss
 
 @param controller 当前弹出的控制器
 @param title 标题
 @param message 消息内容
 */
+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(nonnull NSString *)title
                    message:(nonnull NSString *)message;

/**
 显示标题+消息，可自定义dismiss时间
 
 @param controller 当前弹出的控制器
 @param title 标题
 @param message 消息内容
 @param timerInerval dismiss时间
 */
+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(nonnull NSString *)title
                    message:(nonnull NSString *)message
               timeInterval:(NSTimeInterval)timerInerval;



/**
 显示默认弹出和按钮风格（常用一）
 
 @param controller 当前弹出的控制器
 @param title 标题
 @param message 消息内容
 @param titles 按钮标题数组，可只传一个，actionTwo置nil
 @param actionOne 第一个按钮事件
 @param actionTwo 第二个按钮事件
 */
+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(NSString *)title
                    message:(NSString *)message
               actionTitles:(nonnull NSArray<NSString *> *)titles
                  actionOne:(ActionOne)actionOne
                  actionTwo:(ActionTwo)actionTwo;

/**
 显示默认按钮风格，可自定义弹出风格
 
 @param controller 当前弹出的控制器
 @param title 标题
 @param message 消息内容
 @param titles 按钮标题数组，可只传一个，actionTwo置nil
 @param actionOne 第一个按钮事件
 @param actionTwo 第二个按钮事件
 @param isAlertStyle 弹出方式，YES为Alert，NO为Sheet，采用sheet时会自动加上cacel按钮
 */
+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(NSString *)title
                    message:(NSString *)message
               actionTitles:(nonnull NSArray<NSString *> *)titles
                  actionOne:(ActionOne)actionOne
                  actionTwo:(ActionTwo)actionTwo
               isAlertStyle:(BOOL)isAlertStyle;


/**
 显示默认弹出风格，可自定义按钮风格（常用二）
 
 @param controller 当前弹出的控制器
 @param title 标题
 @param message 消息内容
 @param titles 按钮标题数组，可只传一个，actionTwo置nil
 @param actionStyles 自定义按钮风格
 @param actionOne 第一个按钮事件
 @param actionTwo 第二个按钮事件
 */
+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(NSString *)title
                    message:(NSString *)message
               actionTitles:(nonnull NSArray<NSString *> *)titles
               actionStyles:(NSArray<NSNumber *> *)actionStyles
                  actionOne:(ActionOne)actionOne
                  actionTwo:(ActionOne)actionTwo;

/**
 自定义弹出风格和按钮风格
 
 @param controller 当前弹出的控制器
 @param title 标题
 @param message 消息内容
 @param titles 按钮标题数组，可只传一个，actionTwo置nil
 @param actionStyles action风格，数组形式
 @param actionOne 第一个按钮事件
 @param actionTwo 第二个按钮事件
 @param isAlertStyle 弹出方式，YES为Alert，NO为Sheet，采用sheet时会自动加上cacel按钮
 */
+ (void)alertWithController:(nonnull UIViewController *)controller
                      title:(NSString *)title
                    message:(NSString *)message
               actionTitles:(nonnull NSArray<NSString *> *)titles
               actionStyles:(NSArray<NSNumber *> *)actionStyles
                  actionOne:(ActionOne)actionOne
                  actionTwo:(ActionOne)actionTwo
               isAlertStyle:(BOOL)isAlertStyle;

@end
