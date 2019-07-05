//
//  BaseViewController.m
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/5.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "BaseVieModel.h"


@implementation BaseViewModel

-(void)initWithBlock: (SuccessBlock)successBlock fail:(FailBlock)failBlock{
    _successBlock = successBlock;
    _failBlock = failBlock;
    
}
@end
