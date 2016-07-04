//
//  ViewController.m
//  LNEmojiKeyboard
//
//  Created by David on 16/7/4.
//  Copyright © 2016年 topcoders. All rights reserved.
//

#import "ViewController.h"
#import "LNTextView.h"
#import "LNEmojiKeyboard.h"

@interface ViewController ()

@property (nonatomic,strong) LNTextView *textView;

@property (nonatomic, strong) LNEmojiKeyboard *keyboard;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.textView = [[LNTextView alloc]initWithPlaceHolder:@"交流"];
    self.textView.frame = CGRectMake(150, 150, 200, 200);
    self.textView.backgroundColor = [UIColor redColor];

    [self.view addSubview:self.textView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(200, 100, 50, 50);
    button.backgroundColor = [UIColor blueColor];
    
    [button addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    // 创建表情键盘对象
    self.keyboard = [[LNEmojiKeyboard alloc]initWithBundleName:@"" andFilePathArray:@[]];
    
}

- (void)btnClick{
    
    //切换表情键盘
    self.textView.inputView = self.textView.inputView == nil? self.keyboard:nil;
    [self.textView reloadInputViews];
}

@end
