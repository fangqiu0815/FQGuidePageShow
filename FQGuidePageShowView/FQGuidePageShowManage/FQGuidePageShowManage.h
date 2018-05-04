//
//  FQGuidePageShowManage.h
//  FQGuidePageShowView
//
//  Created by mac on 2018/5/4.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^FinishBlock)(void);

typedef NS_ENUM(NSInteger, FQGuidePageType) {
    FQGuidePageTypeHome = 0,
    FQGuidePageTypeMajor,
};

@interface FQGuidePageShowManage : NSObject

/** 单例 */
+ (instancetype)shareManager;

/**
 显示方法
 
 @param type 指引页类型
 */
- (void)showGuidePageWithType:(FQGuidePageType)type;

/**
 显示方法
 
 @param type 指引页类型
 @param completion 完成时回调
 */
- (void)showGuidePageWithType:(FQGuidePageType)type completion:(FinishBlock)completion;


@end
