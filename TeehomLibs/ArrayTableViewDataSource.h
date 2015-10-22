//
//  ArrayTableViewDataSource.h
//  TeehomLibs
//
//  Created by Teehom on 10/21/15.
//  Copyright © 2015 Teehom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^TableViewCellConfigureBlock)(id cell, id item);


@interface ArrayTableViewDataSource : NSObject<UITableViewDataSource>

/**
 *  初始化TableViewDataSources
 *
 *  @param anItems             列表的所有数据
 *  @param anClass             cell的类
 *  @param aCellIdentifier     cellId
 *  @param aConfigureCellBlock 配置cell的block
 *
 *  @return TableViewDataSources
 */
- (id)initWithItems:(NSArray *)anItems
          cellClass:(Class)anClass
     cellIdentifier:(NSString *)aCellIdentifier
 configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock ;

/**
 *  返回某一行的数据源
 *
 *  @param indexPath cell的indexPath
 *
 *  @return 返回某一行的数据源
 */
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;


@end
