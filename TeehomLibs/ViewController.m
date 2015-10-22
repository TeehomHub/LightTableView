//
//  ViewController.m
//  TeehomLibs
//
//  Created by Teehom on 10/15/15.
//  Copyright © 2015 Teehom. All rights reserved.
//

#import "ViewController.h"
#import "THButton.h"
#import <BlocksKit+UIKit.h>
#import <Masonry.h>
#import "CustomCell.h"
#import "CustomCell+Configure.h"
#import "ArrayTableViewDataSource.h"
#import "User.h"

@interface ViewController ()<UITableViewDelegate>

@property (nonatomic, strong) ArrayTableViewDataSource *userArrayDataSource;

@property (nonatomic, strong) UITableView *userTableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"要参加比赛吗？" preferredStyle:UIAlertControllerStyleActionSheet];
//        
//        UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"点我" style:UIPreviewActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//            NSLog(@"点击了");
//        }];
//        [alertController addAction:alertAction];
//        [self presentViewController:alertController animated:YES completion:nil];
//
//    });
//    
//    
//    
//    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 200, 44)];
//    textField.center = self.view.center;
//    textField.backgroundColor = [UIColor redColor];
//    textField.textColor = [UIColor blackColor];
//    textField.placeholder = @"请输入";
//    [self.view addSubview:textField];
//    
//    
//    textField.bk_shouldBeginEditingBlock = ^(UITextField *field){
//        return YES;
//    };
//    
//    textField.bk_didBeginEditingBlock = ^(UITextField *field){
//        NSLog(@"已经开始编辑");
//    };
//    
//    textField.bk_shouldBeginEditingBlock = ^(UITextField *field){
//        NSLog(@"准备开始编辑");
//        return YES;
//    };
//    
//    textField.bk_didEndEditingBlock = ^(UITextField *field){
//        NSLog(@"已经结束编辑了");
//    };
//    
//    textField.bk_shouldReturnBlock = ^(UITextField *field){
//        [field resignFirstResponder];
//        return YES;
//    };
//    
//    textField.bk_shouldChangeCharactersInRangeWithReplacementStringBlock = ^(UITextField *field, NSRange range, NSString *text){
//        NSLog(@"text==%@",text);
//        return YES;
//    };
    
    
    //使用Masonry
    
//    __weak typeof(&*self)weakSelf = self;

    //居中一个view
//    UIView *sv = [UIView new];
//    sv.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:sv];
//    
//    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(weakSelf.view);
//        make.size.mas_equalTo(CGSizeMake(300, 300));
//    }];
//    
//    
//    UIView *view1 = [UIView new];
//    view1.backgroundColor = [UIColor redColor];
//    [self.view addSubview:view1];
    
//    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
////        make.edges.equalTo(sv).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
//        //等价
////        make.top.equalTo(sv).with.offset(10);
////        make.left.equalTo(sv).with.offset(10);
////        make.bottom.equalTo(sv).with.offset(-10);
////        make.right.equalTo(sv).with.offset(-10);
//        
//        //等价与
////        make.top.left.bottom.and.right.equalTo(sv).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
//
//    }];
    
    
    // 让两个高度为150的view垂直居中且等宽且等间隔排列 间隔为10(自动计算其宽度)
    

    
//    UIView *sv2 = [UIView new];
//    sv2.backgroundColor = [UIColor orangeColor];
//    [self.view addSubview:sv2];
//    
//    
//    
//    UIView *sv3 = [UIView new];
//    sv3.backgroundColor = [UIColor orangeColor];
//    [self.view addSubview:sv3];
//    
//    
//    int padding1 = 10;
//    
//    
//    [sv2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.height.mas_equalTo(@150);//设置宽度为150
//        make.left.equalTo(sv.mas_left).with.offset(padding1);//设置左侧离superview的offset为padding1
//        make.right.equalTo(sv3.mas_left).with.offset(-padding1);//设置右侧与sv3的offset为-padding1
//        make.centerY.mas_equalTo(sv.mas_centerY);//设置垂直居中
//        make.width.equalTo(sv3);//设置水平居中
//    }];
//
//    
//    [sv3 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.height.mas_equalTo(@150);
//        make.left.equalTo(sv2.mas_right).with.offset(padding1);
//        make.right.equalTo(sv.mas_right).with.offset(-padding1);
//        make.centerY.mas_equalTo(sv.mas_centerY);
//        make.width.equalTo(sv2);
//    }];

    //计算scrollerview的contentSize
    
//    UIScrollView *scrollView = [UIScrollView new];
//    scrollView.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:scrollView];
//    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(weakSelf.view).with.insets(UIEdgeInsetsMake(5,5,5,5));
//    }];
//    UIView *container = [UIView new];
//    [scrollView addSubview:container];
//    [container mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(scrollView);
//        make.width.equalTo(scrollView);
//    }];
//    
//    
//    int count = 10;
//    UIView *lastView = nil;
//    for ( int i = 1 ; i <= count ; ++i )
//    {
//        UIView *subv = [UIView new];
//        [container addSubview:subv];
//        subv.backgroundColor = [UIColor colorWithHue:( arc4random() % 256 / 256.0 )
//                                          saturation:( arc4random() % 128 / 256.0 ) + 0.5
//                                          brightness:( arc4random() % 128 / 256.0 ) + 0.5
//                                               alpha:1];
//        
//        [subv mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.and.right.equalTo(container);
//            make.height.mas_equalTo(@(20*i));
//            if ( lastView )
//            {
//                make.top.mas_equalTo(lastView.mas_bottom);
//            }
//            else
//            {
//                make.top.mas_equalTo(container.mas_top);
//            }
//        }];
//        
//        lastView = subv;
//    }
//    
//    
//    [container mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(lastView.mas_bottom);
//    }];

    
    //
    [self initTableView];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)initTableView
{
    self.userTableView = [UITableView new];
    self.userTableView .backgroundColor = [UIColor clearColor];
    self.userTableView .separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.userTableView.delegate = self;
    [self.view addSubview:self.userTableView ];
    
    __weak typeof(&*self)weakSelf = self;
    
    [self.userTableView  mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(weakSelf.view).with.insets(UIEdgeInsetsMake(64, 0, 0, 0));
    }];
    
    //设置数据源
    TableViewCellConfigureBlock cellconfigureBlock = ^(CustomCell *cell , User *user){
        [cell configureCell:user];
    };
    self.userArrayDataSource = [[ArrayTableViewDataSource alloc]initWithItems:[User createUsers] cellClass:NSClassFromString(@"CustomCell") cellIdentifier:@"customCellIdentifier" configureCellBlock:cellconfigureBlock];
    self.userTableView.dataSource = self.userArrayDataSource;
    
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}


@end
