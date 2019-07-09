//
//  MVVMmodel.m
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/4.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMmodel.h"

@implementation MVVMmodel

+(instancetype)mvvmModelWithDict:(NSDictionary *) Dictionary{
    MVVMmodel * MVVM = [[self alloc]init];
    [MVVM setValuesForKeysWithDictionary:Dictionary];
    return MVVM;
}

-(void)setValue:(id)value forKey:(NSString *)key
{
    if ([key isEqualToString:@"id"]) {
        self.idm = value;
    }else
    {
        [super setValue:value forKey:key];
    }
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}

@end

@implementation data_casts
-(void)setValue:(id)value forKey:(NSString *)key
{
    if ([key isEqualToString:@"id"]) {
        self.idm = value;
    }else
    {
        [super setValue:value forKey:key];
    }
}

@end


@implementation data_directors
-(void)setValue:(id)value forKey:(NSString *)key
{
    if ([key isEqualToString:@"id"]) {
        self.idm = value;
    }else
    {
        [super setValue:value forKey:key];
    }
}
@end







