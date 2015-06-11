//
//  ViewController.m
//  Class
//
//  Created by kunren10 on 2014/03/11.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "ViewController.h"
#import "Automobile.h"
#import "CarK2000.h"
#import "CarDeLorean.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // 親クラス側の処理 UIViewControllerクラス
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    // 親クラス側の処理 UIViewControllerクラス
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// [標準イニシャライザ]ボタンを押した時
- (IBAction)proc01:(id)sender{
    
    // ViewController → Automobile データ転送
    // オブジェクト生成（インスタンス化、実体化）
    Automobile *am = [[Automobile alloc] init]; // 標準的なイニシャライザ
//  Automobile *am = [Automobile new];
    
    // 車名:Automobile.h @property (weak, nonatomic) NSString *carName;
    am.carName = @"プリウス";
    // 排気量:@property (assign, nonatomic) int carHaikiryou;
    am.carHaikiryou = 1600;
    
    // インスタントメソッド
    [am runCar];
    [am stopCar];
    
    // +クラスメソッド　曲がる　そのまま呼び出すことができる
    // 引数を持てない
    [Automobile turnCar];
    
    // オブジェクト解放
//  [am release];
    
}

// [指定イニシャライザ]ボタンを押した時
- (IBAction)proc02:(id)sender{

    // オブジェクト生成（インスタンス化、実体化）
    Automobile *am = [[Automobile alloc] initWithCarName:@"ミラージュ"];
    
    [am runCar];
    
}


// [複数インスタンス]ボタンを押した時
- (IBAction)proc03:(id)sender{
    
    // オブジェクト生成（インスタンス化、実体化）
    Automobile *am01 = [[Automobile alloc] init]; // 標準的なイニシャライザ
    // 車名:@property (weak, nonatomic) NSString *carName;
    am01.carName = @"ブルーバード";
    
    // オブジェクト生成（インスタンス化、実体化）
    Automobile *am02 = [[Automobile alloc] init]; // 標準的なイニシャライザ
    // 車名:@property (weak, nonatomic) NSString *carName;
    am02.carName = @"ファミリア";
    
    [am01 runCar];
    [am02 runCar];
}

// [継承クラス]ボタンを押した時
- (IBAction)proc04:(id)sender {
    
    // CarK2000 オブジェクト生成（インスタンス化、実体化）
    CarK2000 *am = [[CarK2000 alloc] initWithCarName:@"ナイト2000"];
    [am runCar];
    [am jumpCar];
    
}

- (IBAction)proc05:(id)sender{
    
    // CarK2000 オブジェクト生成（インスタンス化、実体化）
    CarDeLorean *am = [[CarDeLorean alloc] initWithCarName:@"ナイト2200"];
    [am runCar];
    //[am jumpCar];
    [am doTimeSliip];
    
}

@end
