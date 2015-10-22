//
//  CustomCell+Configure.m
//  TeehomLibs
//
//  Created by Teehom on 10/21/15.
//  Copyright © 2015 Teehom. All rights reserved.
//

#import "CustomCell+Configure.h"
#import "User.h"

@implementation CustomCell (Configure)



/**
 *  配置cell
 *
 *  @param user 用户Model
 */
- (void)configureCell:(User *)user
{
    self.userNameLabel.text = user.userName;
    self.phoneLabel.text = user.phone;
}



@end
