//
//  UIDevice+YTInfo.h
//  YTTool
//
//  Created by Yutian Duan on 2018/12/10.
//  Copyright © 2018年 Wanwin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (YTInfo)

//! 获取app build 号
+ (NSString *)yt_appBuild;
//! 获取app version 号
+ (NSString *)yt_appVersion;
//! 获取app 名称
+ (NSString *)yt_appName;
//! 获取app BundleId
+ (NSString *)yt_bundleId;
//! 获取app bundleName
+ (NSString *)yt_bundleName;

/*=========================================*/

//！ 设备 系统号
+ (NSString *)yt_systemNo;

/*! 获取设备名称
 * 更新到 iPhoneXR
 */
+ (NSString *)yt_systemName;

//! 判断是否是iPad
+ (BOOL)yt_isIpad;

//！ 唯一设备号
+ (NSString *)yt_keychainForImsi;

@end
