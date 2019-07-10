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
#import <SDWebImage/SDWebImage.h>

static NSString * const reuserId = @"reuserId";

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
    self.dataSource = [[dataSourceModel alloc]initWithIdentifier: reuserId configureBlock:^(MVVMcell *cell, MVVMmodel* model,NSIndexPath* indexPath) {
        cell.filmNameLabel.text = model.title;
        cell.filmEnNameLabel.text = model.original_title;
        

        
        
        bool kanji = NO;
        for (int i=0; i<model.original_title.length; i++) {
            NSRange range =NSMakeRange(i, 1);
            NSString * strFromSubStr=[model.original_title substringWithRange:range];
            const char * cStringFromstr=[strFromSubStr UTF8String];
            
            if (strlen(cStringFromstr)==3) {
                kanji = YES;
            }
        }
        
        if(kanji == YES){
            if( model.title!= model.original_title&& model.original_title.length <= 15){
                cell.filmEnNameLabel.text =model.original_title;
            }
            else{
               cell.filmEnNameLabel.text = @" ";
            }
        }
        else{
            if(model.title != model.original_title && model.original_title.length <= 30){
                cell.filmEnNameLabel.text =model.original_title;
            }
            else{
                cell.filmEnNameLabel.text = @" ";
            }
        }

        
        NSDictionary * imageURLs = model.images;
        NSString * imageURL =[imageURLs objectForKey:@"small"];
  //      NSURL * imagurl = [NSURL URLWithString:imageURL];
    //
//        dispatch_async(dispatch_get_main_queue(), ^{
       

       [cell.filmIconLabel sd_setImageWithURL:[NSURL URLWithString:imageURL]];
        
      // UIImage * image =[UIImage imageWithData: [NSData dataWithContentsOfURL:imagurl]];
        //cell.filmIconLabel.image = image;
        //});
        
        
        
        NSDictionary *rates = model.rating;
        
        double d = [rates[@"average"] doubleValue];
        NSString * dstr = [NSString stringWithFormat:@"%.2f", d];
        NSString*string6 = @"评分";
        if([dstr isEqualToString: @"0.00"]){
            cell.filmRateLabel.text = @"暂无评分";
        }
  
        else{
            cell.filmRateLabel.text = [NSString stringWithFormat:@"%@: %@", string6,dstr];
        }
        
        
        NSString* text = model.mainland_pubdate;
        NSString * str = @"上映日期";
        cell.filmPbDateLabel.text = [NSString stringWithFormat:@"%@:%@ ", str, text];
        
        
        NSArray * directnameArray = model.directors;
        NSString* directnameR = @"";

        NSString * string4 = @"导演";
        
        for(int i =0; i < directnameArray.count; i++){
            NSDictionary * setModel= directnameArray[i];
            NSString * tempName = [setModel objectForKey:@"name"];
            if(tempName.length){
                directnameR= [directnameR stringByAppendingString:tempName ];
                if(i< directnameArray.count -1){
                    directnameR = [directnameR stringByAppendingString:@", "];
                }
            }
        }
        
        cell.directors.text = [NSString stringWithFormat:@"%@:%@", string4, directnameR];
        cell.directors.lineBreakMode = NSLineBreakByWordWrapping;
        cell.directors.numberOfLines = 0;
        cell.directors.preferredMaxLayoutWidth = 200;
        
        
     

        NSArray * castnameArray = model.casts;
        NSString* castR = @"";
        NSString * tempName2 = @"";
        for(int i =0; i < castnameArray.count; i++){
            NSDictionary * setModel= castnameArray[i];
            tempName2 = [setModel objectForKey:@"name"];
            if(tempName2.length){
                castR = [castR stringByAppendingString:tempName2];
                if(i< castnameArray.count -1){
                    castR = [castR stringByAppendingString:@", "];
                }
            }
            
        }
        
        
        if([castR  isEqual: @""]){
            cell.actors.text= @"主演：无";

        }
        else{
        NSString * string3 = @"主演";
        cell.actors.text= [NSString stringWithFormat: @"%@: %@", string3,castR];
        cell.actors.lineBreakMode = NSLineBreakByWordWrapping;
        cell.actors.numberOfLines = 0;
        cell.actors.preferredMaxLayoutWidth = 200;
        }
        

        
        
        
        
    }reloadData:^(NSMutableArray *array){
        self.viewModel.myDataArray =array;
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
        [_tableView registerClass:[MVVMcell class] forCellReuseIdentifier:reuserId];
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
