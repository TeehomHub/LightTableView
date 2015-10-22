//
//  CustomCell+Configure.h
//  TeehomLibs
//
//  Created by Teehom on 10/21/15.
//  Copyright © 2015 Teehom. All rights reserved.
//

#import "CustomCell.h"

@class User;

@interface CustomCell (Configure)

/**
 *  配置cell
 *
 *  @param user 用户Model
 */
- (void)configureCell:(User *)user;


@end
