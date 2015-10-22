//
//  UIView+THFrame.h
//  TeehomLibs
//
//  Created by Teehom on 10/15/15.
//  Copyright © 2015 Teehom. All rights reserved.
//  方面UIView以及其子类使用

#import <UIKit/UIKit.h>

@interface UIView (THFrame)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGSize  size;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;


@end
