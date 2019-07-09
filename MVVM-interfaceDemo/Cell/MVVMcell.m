//
//  MVVMcell.m
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/4.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Masonry.h"
#import "MVVMcell.h"

@implementation MVVMcell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self == [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        [self setupUI];
        
    }
    return self;
}





-(void)layoutSubviews{
    [super layoutSubviews];
    
    [self.filmNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(0);
       // make.right.equalTo(self.contentView).offset(0);
        make.height.mas_equalTo(30);
        make.top.equalTo(self.contentView).offset(5);
    }];
    
    [self.filmEnNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //    make.left.equalTo(self.contentView).offset(0);
        make.right.equalTo(self.contentView).offset(0);
        make.height.mas_equalTo(30);
        make.top.equalTo(self.contentView).offset(5);
    }];
    
    
    self.filmIconLabel.opaque = YES;
    // UIImageView * icon1 = [[UIImageView alloc]init];
//    [self.contentView addSubview:self.filmIconLabel];
    self.filmIconLabel.frame =CGRectMake(12, 50, 70, 100);
    //self.filmIconLabel = icon1;
    
    self.detailsButton.frame = CGRectMake(160, 170, 90, 20);
    
    
    [self.filmRateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(96);
        make.height.mas_equalTo(20);
        make.top.equalTo(self.contentView).offset(70);
    }];
    
    [self.filmPbDateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(96);
        make.height.mas_equalTo(20);
        make.top.equalTo(self.contentView).offset(45);
    }];
    
    [self.directors mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(96);
        make.height.mas_equalTo(20);
        make.top.equalTo(self.contentView).offset(94);
    }];
    
    [self.actors mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(96);
        make.height.mas_equalTo(40);
        make.top.equalTo(self.contentView).offset(116);
    }];
    
}



#pragma Labels for dmain VC

-(UILabel*)filmNameLabel{
    if(_filmNameLabel == nil){
        _filmNameLabel = [[UILabel alloc] init];
        //_filmNameLabel.text = @"aaa";
      //  _filmNameLabel.font = [UIFont systemFontOfSize: 16];
        _filmNameLabel.textColor = [UIColor blackColor];
        _filmNameLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    return _filmNameLabel;
}

-(UILabel *)filmEnNameLabel{
    if(_filmEnNameLabel == nil){
        _filmEnNameLabel = [[UILabel alloc]init];
        _filmEnNameLabel.font = [UIFont systemFontOfSize: 16];
        _filmEnNameLabel.textColor = [UIColor blackColor];
    }
    return _filmEnNameLabel;
}

-(UIImageView *)filmIconLabel {
    if(_filmIconLabel ==nil){
        _filmIconLabel = [[UIImageView alloc]init];

    }
    return _filmIconLabel;
}


-(UILabel *)directors{
    if(_directors == nil){
        _directors = [[UILabel alloc]init];
        _directors.font = [UIFont systemFontOfSize: 16];
        _directors.textColor = [UIColor blackColor];
    }
    return _directors;
}


-(UILabel *)actors{
    if(_actors == nil){
        _actors = [[UILabel alloc]init];
        _actors.font = [UIFont systemFontOfSize: 16];
        _actors.textColor = [UIColor blackColor];
    }
    return _actors;
}



-(UILabel*)filmRateLabel{
    if(_filmRateLabel == nil){
        _filmRateLabel = [[UILabel alloc]init];
        _filmRateLabel.font = [UIFont systemFontOfSize: 16];
        _filmRateLabel.textColor = [UIColor blackColor];
    }
    return _filmRateLabel;
}

-(UILabel*)filmPbDateLabel{
    if(_filmPbDateLabel == nil){
        _filmPbDateLabel = [[UILabel alloc]init];
        _filmPbDateLabel.font = [UIFont systemFontOfSize: 16];
        _filmPbDateLabel.textColor = [UIColor blackColor];
    }
    return _filmPbDateLabel;
}





#pragma UIbutton and labels in another view

-(UIButton*)detailsButton{
    if(_detailsButton == nil){
        _detailsButton = [[UIButton alloc] init];
        [_detailsButton setTitle:@"查看详情" forState:UIControlStateNormal];
        _detailsButton.titleLabel.font= [UIFont systemFontOfSize:18 ];
        
        _detailsButton.backgroundColor = [UIColor grayColor];
    }
    return _detailsButton;
    
}










#pragma set up UI

- (void)setupUI{
    
    [self.contentView addSubview:self.filmNameLabel];
    [self.contentView addSubview:self.filmEnNameLabel];
    [self.contentView addSubview:self.filmIconLabel];
    [self.contentView addSubview:self.detailsButton];
    [self.contentView addSubview:self.filmRateLabel];
    [self.contentView addSubview:self.filmPbDateLabel];
    [self.contentView addSubview:self.directors];
    [self.contentView addSubview:self.actors];
    
}

@end
