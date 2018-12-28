//
//  ZPView.m
//  矩阵操作
//
//  Created by apple on 16/7/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZPView.h"

@implementation ZPView

- (void)drawRect:(CGRect)rect
{
    //获得图形上下文：
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    /**
     矩阵操作：把图形进行旋转；
     矩阵操作必须要写在绘制图形之前，如果写在之后则没有效果。
     */
    CGContextRotateCTM(context, M_PI_4 * 0.2);
    
    /**
     矩阵操作：把图形进行缩放。
     */
    CGContextScaleCTM(context, 0.5, 0.5);
    
    /**
     矩阵操作：把图形进行平移。
     */
    CGContextTranslateCTM(context, 50, 100);
    
    //绘制一个矩形：
    CGContextAddRect(context, CGRectMake(10, 10, 50, 50));
    
    //绘制一个圆形：
    CGContextAddEllipseInRect(context, CGRectMake(100, 100, 100, 100));
    
    //绘制一条线：
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 200, 250);
    
    //渲染图形上下文：
    CGContextStrokePath(context);
}

@end
