//
//  Automobile.h
//  Class
//
//  Created by kunren10 on 2014/03/11.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Automobile : NSObject

// -----------------------------------
// プロパティの設定
// -----------------------------------
// 属性（車名）
@property (weak, nonatomic) NSString *carName;

// 属性（排気量）int = assign 主にスカラー変数（intやBOOLなど）のプロパティ属性として利用されます。
@property (assign, nonatomic) int carHaikiryou;

// -----------------------------------
// メソッドの設定（プロトタイプ宣言）
// -----------------------------------
// メソッドを外部から参照可能
- (void)runCar;

- (void)stopCar;

- (id)initWithCarName:(NSString *)name;

+ (void)turnCar;

@end
