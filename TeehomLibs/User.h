//
//  User.h
//  TeehomLibs
//
//  Created by Teehom on 10/21/15.
//  Copyright © 2015 Teehom. All rights reserved.
//  测试使用的M

#import <Foundation/Foundation.h>

@interface User : NSObject


@property(nonatomic,copy) NSString *userName;

@property(nonatomic,copy) NSString *phone;

/**
 *  创建多个用户
 *
 *  @return 多个用户数组
 */
+ (NSArray *)createUsers;

@end
