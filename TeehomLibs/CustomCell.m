//
//  CustomCell.m
//  TeehomLibs
//
//  Created by Teehom on 10/21/15.
//  Copyright © 2015 Teehom. All rights reserved.
//

#import "CustomCell.h"
#import <Masonry.h>
#import "UtilsMacro.h"

@implementation CustomCell

- (id)init{
    self = [super init];
    if (self) {
        
        [self showInView];
    }
    return self;
}

- (void)showInView
{
//    self.frame = CGRectMake(0, 0,SCREEN_WIDTH, NavigationBar_HEIGHT);
    
    _userNameLabel = [[UILabel alloc]init];
    _userNameLabel.textColor = [UIColor blackColor];
    [self addSubview:_userNameLabel];
    
    __weak typeof(&*self) weakSelf = self;
    
    [_userNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf).with.offset(10);
        make.top.equalTo(weakSelf).with.offset(10);
        make.bottom.equalTo(weakSelf).with.offset(-10);
        make.width.mas_equalTo(@(150));
    }];
    
    
    _phoneLabel = [[UILabel alloc]init];
    _phoneLabel.textColor = [UIColor blackColor];
    _phoneLabel.textAlignment = NSTextAlignmentRight;

    [self addSubview:_phoneLabel];
    
    [_phoneLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(_userNameLabel.mas_right).with.offset(10);
        make.top.equalTo(weakSelf).with.offset(10);
        make.bottom.equalTo(weakSelf).with.offset(-10);
        make.right.equalTo(weakSelf).with.offset(-10);
        

    }];


}

@end
