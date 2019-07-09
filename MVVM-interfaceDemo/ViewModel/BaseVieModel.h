//
//  BaseViewController.h
//  MVVM-interfaceDemo
//
//  Created by CHUXIANWANG on 2019/7/5.
//  Copyright © 2019年 CHUXIANWANG. All rights reserved.
//

#import<Foundation/Foundation.h>


typedef void(^SuccessBlock)(id data);
typedef void (^FailBlock)(id data);

@interface BaseViewModel :NSObject{
    @public
    NSString * title;
 //   NSString * original_title;
}

@property (nonatomic, copy ) SuccessBlock successBlock;
@property(nonatomic, copy) FailBlock failBlock;

-(void)initWithBlock: (SuccessBlock)successBlock fail:(FailBlock)failBlock;

@end
