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
#import "MVVMview_model.h"


@interface ViewController ()<UITableViewDelegate>

@property(nonatomic,strong)UITableView * tableView;
@property(nonatomic,strong)MVVMview_model *viewModel;
@property(nonatomic,strong)dataSourceModel * dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        __weak __typeof(self) weakSelf = self;
    // Do any additional setup after loading the view, typically from a nib.
    self.dataSource = [[dataSourceModel alloc]initWithIdentifier:@"reuseIdentifier" configureBlock:^(MVVMcell *cell, MVVMmodel* model,NSIndexPath* indexPath) {
        cell.filmEnNameLabel.text = model.title;
        cell.filmEnNameLabel.text = model.original_title;
    }reloadData:^(NSMutableArray *array){
        weakSelf.viewModel.myDataArray =array;
    }];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self.dataSource;

    self.viewModel = [[MVVMview_model alloc]init];
    [self.viewModel initWithBlock:^(id data) {
        weakSelf.dataSource.myDataArray = [weakSelf.viewModel.myDataArray mutableCopy];
        [weakSelf.tableView reloadData];
    
    } fail:nil];
    
    [self.viewModel loadData];
    
}

-(UITableView*)tableView {
    if(!_tableView){
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor whiteColor];
        [_tableView registerClass:[MVVMcell class] forCellReuseIdentifier:@"reuseIdentifier"];
    }
    return _tableView;
}

-(void)dealloc{
    NSLog(@"dealloc--%@",self);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
