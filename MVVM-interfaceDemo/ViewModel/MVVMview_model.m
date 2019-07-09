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

   dispatch_queue_t que = dispatch_queue_create("create", DISPATCH_QUEUE_CONCURRENT);
  
   dispatch_async(que, ^{
       
       NSString * url = @"https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b&city=%B1%B1%BE%A9&start=0&count=100&client=&udid=";

       NSURL* Dataurl = [NSURL URLWithString:url];
       
       NSString * Datastring = [NSString stringWithContentsOfURL:Dataurl encoding:NSUTF8StringEncoding error:nil];
       
       NSData * data = [Datastring dataUsingEncoding:NSUTF8StringEncoding];
       
       NSDictionary * jsonData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
       
    NSArray *  subjectsArray = jsonData[@"subjects"];
       [self.myDataArray removeAllObjects];
    
    for (NSDictionary * tempDict in subjectsArray) {
        MVVMmodel* model = [MVVMmodel mvvmModelWithDict:tempDict];
        [self.myDataArray addObject:model];
    }
    
    dispatch_async(dispatch_get_main_queue(),^{
        
        self.successBlock(self.myDataArray);
       });
    
   });
}


-(NSMutableArray*) myDataArray{
    if  (!_myDataArray){
        _myDataArray = [NSMutableArray arrayWithCapacity:10];
    }
    return _myDataArray;
}

-(instancetype)init{
    if(self = [super init]){
        [self addObserver:self forKeyPath:@"myDataArray" options:(NSKeyValueObservingOptionNew) context:nil];
        //observer是self，监听myDataArray属性，options监听新值得改变
        //监听到myDataArray的属性改变就调用观察者的方法通知新的值
        
    //    [self loadData];
    }
    return self;
}

//notity the new values
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    NSLog(@"属性改变了%@",change[NSKeyValueChangeNewKey]);
    self.successBlock(change[NSKeyValueChangeNewKey]);

}

//after destroy the object, deallocate the oberve
-(void)dealloc{
    [self removeObserver:self forKeyPath:@"myDataArray"];
}

@end
