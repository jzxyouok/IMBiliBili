//
//  Public.h
//  IMBiliBili
//
//  Created by 汤振治 on 16/6/4.
//  Copyright © 2016年 Imitations. All rights reserved.
//

#ifndef Public_h
#define Public_h

// RGB颜色
#define IMColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

// 随机色
#define IMRandomColor IMColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

#ifdef DEBUG // 处于开发阶段
    #define IMLog(...) NSLog(__VA_ARGS__)
#else // 处于发布阶段
    #define IMLog(...)
#endif

#define XMGLogFunc IMLog(@"%s", __func__)

#endif /* Public_h */
