//
//  CarK2000.m
//  Class
//
//  Created by kunren10 on 2014/03/11.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "CarK2000.h"

@implementation CarK2000

//---------------------------------
// インスタンスメソッド
//---------------------------------

// 「ジャンプする」メソッド
- (void)jumpCar {
    
    NSLog(@"%@ ジャンプする",self.carName);
}

- (void)runCar {

    [super runCar];
    NSLog(@"%@ めちゃ速く走る",self.carName);

}

@end
