//
//  MVVMview_model.m
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/4.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMview_model.h"

@implementation MVVMview_model

-(void)loadData{
    NSString * url = @"https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b&city=%B1%B1%BE%A9&start=0&count=100&client=&udid=";
    
    NSURL* Dataurl = [NSURL URLWithString:url];
    
    NSString * Datastring = [NSString stringWithContentsOfURL:Dataurl encoding:NSUTF8StringEncoding error:nil];
    
    NSData * data = [Datastring dataUsingEncoding:NSUTF8StringEncoding];
    
    NSDictionary * jsonData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    NSArray *  subjectsArray = jsonData[@"subjects"];
    
    
    for (NSDictionary * tempDict in subjectsArray) {
        MVVMmodel* model = [MVVMmodel mvvmModelWithDict:tempDict];
        [self.myDataArray addObject:model];
    }
}

@end
