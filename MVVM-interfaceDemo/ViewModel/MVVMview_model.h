//
//  MVVMview_model.h
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/4.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

//#import "MVVMcell.h"
#import "MVVMmodel.h"
#import "VIewController.h"

@interface MVVMview_model : NSObject

@property (nonatomic,strong)NSMutableArray * myDataArray;

-(void)loadData;


@end
/* MVVMview_model_h */
