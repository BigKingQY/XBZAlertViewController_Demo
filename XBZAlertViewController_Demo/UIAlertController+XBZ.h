//
//  UIAlertController+XBZ.h
//  饼图_demo
//
//  Created by BigKing on 2018/7/4.
//  Copyright © 2018年 BigKing. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ActionOne)(void);

typedef void(^ActionTwo)(void);

@interface UIAlertController (XBZ)

/**
 不带message的弹出提示，默认显示2s自动dismiss

 @param controller 当前弹出的控制器
 @param title 标题
 */
+ (void)alertWithController:(nonnull UIViewController *)controller title:(nonnull NSString *)title;


/**
 不带message的弹出提示，可自定义dismiss时间

 @param controller 当前弹出的控制器
 @param title 标题
 @param timerInerval dismiss时间
 */
+ (void)alertWithController:(nonnull UIViewController *)controller title:(nonnull NSString *)title timeInterval:(NSTimeInterval)timerInerval;

/**
 带message的弹出提示，默认显示2s自动dismiss掉

 @param controller 当前弹出的控制器
 @param title 标题
 @param message 消息内容
 */
+ (void)alertWithController:(nonnull UIViewController *)controller title:(nonnull NSString *)title message:(nonnull NSString *)message;

/**
 带message的弹出提示，可自定义dismiss时间

 @param controller 当前弹出的控制器
 @param title 标题
 @param message 消息内容
 @param timerInerval dismiss时间
 */
+ (void)alertWithController:(nonnull UIViewController *)controller title:(nonnull NSString *)title message:(nonnull NSString *)message timeInterval:(NSTimeInterval)timerInerval;


/**
 使用默认action风格的alert，最多支持两个按钮（一般两个就够了）

 @param controller 当前弹出的控制器
 @param title 标题
 @param message 消息内容
 @param titles 按钮标题数组
 @param actionOne 第一个按钮事件
 @param actionTwo 第二个按钮事件
 @param alertStyle 弹出方式，采用sheet时会自动加上cacel按钮
 */
+ (void)alertWithController:(nonnull UIViewController *)controller title:(NSString *)title message:(NSString *)message actionTitles:(nonnull NSArray<NSString *> *)titles actionOne:(ActionOne)actionOne actionTwo:(ActionTwo)actionTwo alertStyle:(UIAlertControllerStyle)alertStyle;

/**
 可自己定义action风格的alert

 @param controller 当前弹出的控制器
 @param title 标题
 @param message 消息内容
 @param titles 按钮标题数组
 @param actionStyles action风格，数组形式
 @param actionOne 第一个按钮事件
 @param actionTwo 第二个按钮事件
 @param alertStyle 弹出方式，采用sheet时会自动加上cacel按钮
 */
+ (void)alertWithController:(nonnull UIViewController *)controller title:(NSString *)title message:(NSString *)message actionTitles:(nonnull NSArray<NSString *> *)titles actionStyles:(NSArray<NSNumber *> *)actionStyles actionOne:(ActionOne)actionOne actionTwo:(ActionOne)actionTwo alertStyle:(UIAlertControllerStyle)alertStyle;

@end
