//
//  MVVM_MV.h
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/9.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "MVVMModel.h"

@interface MVVM_MV : NSObject

@property (strong, nonatomic, readonly) RACCommand * command;

@end
