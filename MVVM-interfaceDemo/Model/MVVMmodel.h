//
//  MVVMmodel.h
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/4.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//


#import "MVVMsub_model.h"


@interface MVVMmodel : NSObject <NSCopying>

@property(nonatomic,strong) NSDictionary * rating;

@property(nonatomic,strong) NSArray * genres;

@property(nonatomic,copy) NSString * title;

@property(nonatomic, strong) NSArray< data_casts*> *casts;

@property(nonatomic, strong) NSArray * duration;

@property(nonatomic, assign) NSInteger collect_count;

@property(nonatomic, copy) NSString * mainland_pubdate;

@property(nonatomic,assign) bool has_video;

@property(nonatomic, copy) NSString * original_title;

@property(nonatomic,copy)NSString * subtype;

@property(nonatomic, strong) NSArray <data_directors *> * directors;

@property(nonatomic, strong)NSArray * pubdates;

@property(nonatomic, assign) NSInteger * year;

@property(nonatomic, strong) NSDictionary * images;

@property(nonatomic,copy)NSString * alt;

@property(nonatomic, copy)NSString * idm;

+(instancetype)mvvmModelWithDict:(NSDictionary *) Dictionary;

@end



