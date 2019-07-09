//
//  MVVMcell.h
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/4.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import "MVVMview_model.h"


@interface MVVMcell : UITableViewCell

@property(nonatomic,strong)UILabel * filmNameLabel;
@property(nonatomic,strong)UILabel * filmEnNameLabel;
@property(nonatomic,strong)UIImageView * filmIconLabel;

@property(nonatomic, strong)UILabel * filmRateLabel;
@property(nonatomic,strong)UILabel * filmPbDateLabel;
@property(nonatomic,strong)UIButton * detailsButton;

@property(nonatomic,strong)UICollectionView * directorsC;
@property(nonatomic,strong)UICollectionView * actorsC;

@property(nonatomic,strong)UILabel * directors;
@property(nonatomic,strong)UILabel * actors;


@property(nonatomic,strong)UINavigationController * detailVC;


@end

