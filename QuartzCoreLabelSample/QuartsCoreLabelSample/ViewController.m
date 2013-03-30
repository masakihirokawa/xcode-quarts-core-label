//
//  ViewController.m
//  QuartsCoreLabelSample
//
//  Created by Dolice on 2013/03/30.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self initLabel];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)initLabel
{
  //ラベルのサイズ指定
  NSInteger labelWidth = 180;
  NSInteger labelHeight = 30;
  NSInteger labelX = (self.view.frame.size.width / 2) - (labelWidth / 2);
  NSInteger labelY = (self.view.frame.size.height / 2) - (labelHeight / 2);
  CGRect rect = CGRectMake(labelX, labelY, labelWidth, labelHeight);
  //ラベル初期化
  UILabel *myLabel = [[UILabel alloc]initWithFrame:rect];
  //ラベルのテキスト指定
  myLabel.text = NSLocalizedString(@"Sample", nil);
  //ラベルの書体指定
  myLabel.font = [UIFont fontWithName:@"Helvetica" size:12];
  //ラベルのカラー指定
  myLabel.textColor = [UIColor whiteColor];
  myLabel.shadowColor = [UIColor grayColor];
  myLabel.shadowOffset = CGSizeMake(0.5, 0.5);
  //ラベルのセンタリング
  myLabel.textAlignment = NSTextAlignmentCenter;
  //ラベルの行数を無制限に設定
  myLabel.numberOfLines = 0;
  //ラベルの背景色を黒に指定
  myLabel.backgroundColor = [UIColor blackColor];
  //ラベルの角丸指定
  [[myLabel layer] setCornerRadius:8.0];
  //ラベルのはみ出しを許可するか
  [myLabel setClipsToBounds:YES];
  //ラベルをステージ上に追加
  [self.view addSubview:myLabel];
}

@end
