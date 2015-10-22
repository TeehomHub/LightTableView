//
//  User.m
//  TeehomLibs
//
//  Created by Teehom on 10/21/15.
//  Copyright © 2015 Teehom. All rights reserved.
//

#import "User.h"

@implementation User




/**
 *  创建多个用户
 *
 *  @return 多个用户数组
 */
+ (NSArray *)createUsers
{
    
    User *user01 = [[User alloc]init];
    user01.userName = @"成龙";
    user01.phone = @"15989386120";

    User *user02 = [[User alloc]init];
    user02.userName = @"刘德华";
    user02.phone = @"13706030977";
    
    User *user03 = [[User alloc]init];
    user03.userName = @"陈冠希";
    user03.phone = @"13890785643";
    
    
    User *user04 = [[User alloc]init];
    user04.userName = @"周杰伦";
    user04.phone = @"15906732223";
    
    User *user05 = [[User alloc]init];
    user05.userName = @"黎明";
    user05.phone = @"18934434455";
    
    User *user06 = [[User alloc]init];
    user06.userName = @"张学友";
    user06.phone = @"13445458877";
    
    NSArray *users = @[user01,user02,user03,user04,user05,user06];
    
    return users;
    
    
}



@end
