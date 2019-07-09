//
//  MVVMsub_model.h
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/4.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import <UIKit/UIKit.h>
@class data_casts, data_directors;

@interface MVVMsub_model : NSObject

@end





@interface data_casts : NSObject

@property(nonatomic, strong) NSDictionary * avatars;

@property(nonatomic, copy) NSString * name_en;

@property(nonatomic,copy)NSString * name;

@property(nonatomic, copy)NSString * alt;

@property(nonatomic, copy) NSString * idm;

@end




@interface data_directors : NSObject

@property(nonatomic, strong) NSDictionary * avartas;

@property(nonatomic, copy) NSString * name_en;

@property(nonatomic, copy) NSString * name;

@property(nonatomic, copy)NSString * alt;

@property(nonatomic, copy) NSString * idm;


@end
