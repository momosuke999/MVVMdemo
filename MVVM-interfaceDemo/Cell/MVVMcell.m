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
        make.right.equalTo(self.contentView).offset(0);
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
    [self.contentView addSubview:self.filmIconLabel];
    self.filmIconLabel.frame =CGRectMake(5, 100, 70, 100);
    //self.filmIconLabel = icon1;
}

- (void)setupUI{
    
    [self.contentView addSubview:self.filmNameLabel];
    [self.contentView addSubview:self.filmEnNameLabel];
    [self.contentView addSubview:self.filmIconLabel];
    
}

@end
