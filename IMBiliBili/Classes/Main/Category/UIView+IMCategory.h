//
//  UIView+IMCategory.h
//  IMBiliBili
//
//  Created by 汤振治 on 16/6/4.
//  Copyright © 2016年 Imitations. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (IMCategory)

/**
 *  x
 */
@property (nonatomic, assign) CGFloat x;
/**
 *  Y
 */
@property (nonatomic, assign) CGFloat y;
/**
 *  中心点 X
 */
@property (nonatomic, assign) CGFloat centerX;
/**
 *  中心点 Y
 */
@property (nonatomic, assign) CGFloat centerY;
/**
 *  宽度
 */
@property (nonatomic, assign) CGFloat width;
/**
 *  高度
 */
@property (nonatomic, assign) CGFloat height;
/**
 *  尺寸
 */
@property (nonatomic, assign) CGSize size;
/**
 *  原点
 */
@property (nonatomic, assign) CGPoint origin;


@end
