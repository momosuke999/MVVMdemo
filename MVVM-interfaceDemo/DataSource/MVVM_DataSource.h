//
//  MVVM_DataSource.h
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/4.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//put dataSource into block

typedef void (^CellConfigureBefore)(id cell, id model, NSIndexPath * indexPath);

@interface dataSourceModel : NSObject<UITableViewDataSource, UITableViewDelegate>


@property(nonatomic, strong) NSMutableArray *myDataArray;

-(id)initWithIdentifier:(NSString*)identifier configureBlock:(CellConfigureBefore) before;

-(void)addMyDataArray:(NSArray *)datas;

-(id)modelsAtIndexPath:(NSIndexPath*)indexPath;

@end


