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
    [MVVMmodel setValuesForKeysWithDictionary:Dictionary];
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


@implementation data_rating
-(void)setValue:(id)value forUndifiedKey:(NSString *)key{
    
}
@end


@implementation data_details

-(void)setValue:(id)value forKey:(NSString *)key
{
    if ([key isEqualToString:@"1"]) {
        self.one = [value integerValue];
    }else if ([key isEqualToString:@"2"]) {
        self.two = [value integerValue];
    }else if ([key isEqualToString:@"3"]) {
        self.three = [value integerValue];
    }else if ([key isEqualToString:@"4"]) {
        self.four = [value integerValue];
    }else if ([key isEqualToString:@"5"]) {
        self.five = [value integerValue];
    }else
    {
        [super setValue:value forKey:key];
    }
}

@end



