//
//  ViewController.m
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/4.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import "ViewController.h"
#import "MVVM_DataSource.h"
#import "MVVMcell.h"
#import "MVVMmodel.h"


@interface ViewController ()<UITableViewDelegate>

@property(nonatomic,strong)UITableView * tableView;
@property(nonatomic,strong)NSMutableArray * myDataArray;
@property(nonatomic,strong)dataSourceModel * dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
