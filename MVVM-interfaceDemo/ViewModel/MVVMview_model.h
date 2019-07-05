//
//  MVVMview_model.h
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/4.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

//#import "MVVMcell.h"
#import "MVVMmodel.h"
#import "ViewController.h"
#import "BaseVieModel.h"

//#import "MVPprotocol.h"

@interface MVVMview_model : BaseViewModel

@property (nonatomic,strong)NSMutableArray * myDataArray;

-(void)loadData;


@end
/* MVVMview_model_h */
