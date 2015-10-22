//
//  ArrayTableViewDataSource.m
//  TeehomLibs
//
//  Created by Teehom on 10/21/15.
//  Copyright © 2015 Teehom. All rights reserved.
//

#import "ArrayTableViewDataSource.h"

@interface ArrayTableViewDataSource()

/**
 *  数据源
 */
@property(nonatomic,strong) NSArray *items;

/**
 *  cellId
 */
@property(nonatomic,copy) NSString *cellIdentifier;

@property(nonatomic,strong) Class cellClass;


/**
 *
 */
@property(nonatomic,copy) TableViewCellConfigureBlock configureCellBlock;


@end



@implementation ArrayTableViewDataSource

/**
 *  初始化TableViewDataSources
 *
 *  @param anItems             列表的所有数据
 *  @param aCellIdentifier     cellId
 *  @param aConfigureCellBlock 配置cell的block
 *
 *  @return TableViewDataSources
 */
- (id)initWithItems:(NSArray *)anItems
     cellClass:(Class)anClass
     cellIdentifier:(NSString *)aCellIdentifier
 configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock
{
    self = [super init];
    if (self) {
        self.items = anItems;
        self.cellClass = anClass;
        self.cellIdentifier = aCellIdentifier;
        self.configureCellBlock = [aConfigureCellBlock copy];
    }
    return self;
}

/**
 *  返回某一行的数据源
 *
 *  @param indexPath cell的indexPath
 *
 *  @return 返回某一行的数据源
 */
- (id)itemAtIndexPath:(NSIndexPath *)indexPath
{
   return  self.items[indexPath.row];
}


#pragma mark - UITableViewDataSource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return  self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    
    if (cell == nil) {
        
        cell = [[self.cellClass alloc]init];
        
    }
    
    id item = [self itemAtIndexPath:indexPath];
    
    self.configureCellBlock(cell,item);
    
    return cell;
}




















@end
