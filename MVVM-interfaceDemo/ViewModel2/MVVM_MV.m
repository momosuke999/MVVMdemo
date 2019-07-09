//
//  MVVM_MV.m
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/9.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVM_MV.h"

@implementation MVVM_MV


-(instancetype)init{
    if(self == [super init]){
        [self initViewModel];
    }
    return self;
}


-(void)initViewModel{
    @weakify(self);
    self.command = [[RACCommand alloc] initWithSignalBlock ]
}

@end
