//
//  Automobile.m
//  Class
//
//  Created by kunren10 on 2014/03/11.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "Automobile.h"

@implementation Automobile

// NSObject（スーパークラス）オーバーライドされた状態　機能の拡張することが出来る
// 標準イニシャライザ（コンストラクタにあたるもの）
//- (id)init
//{
//    // superスーパークラス
//    // 親クラスの初期化を行う
//    self = [super init];
//    
//    // 子供クラスの初期化
//    if (self) {
//        
//    }
//    return self;
//}

// 指定イニシャライザ
- (id)initWithCarName:(NSString *)name
{
    self = [super init];
    if (self) {
        
        self.carName = name;
        
    }
    return self;
}

// ファイナライザ
// ARC機能がONのため必要はない
//- (void)dealloc
//{
//    
//}

//---------------------------------
// インスタンスメソッド
//---------------------------------

// 「走る」メソッド
- (void)runCar {
    
    // ViewController → Automobile データ受入
    //NSLog(@"%s",__func__);
    NSLog(@"%@ 走る",self.carName);
    
}

// 「止まる」メソッド
- (void)stopCar {
    
    //NSLog(@"%s",__func__);
    NSLog(@"%@ 止まる",self.carName);

}

//---------------------------------
// クラスメソッド
//---------------------------------

// 「曲がる」メソッド
+ (void)turnCar {
    
    //NSLog(@"%s",__func__);
    NSLog(@"曲がる");
    
}

@end
