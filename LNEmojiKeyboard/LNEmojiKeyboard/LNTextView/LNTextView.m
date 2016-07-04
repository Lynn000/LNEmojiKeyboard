//
//  LNTextView.m
//  LNEmojiKeyboard
//
//  Created by David on 16/7/4.
//  Copyright © 2016年 topcoders. All rights reserved.
//

#import "LNTextView.h"
#define kNotificationTextChange @"kNotificationTextChange"


@interface LNTextView ()<UITextViewDelegate>

// 占位符属性
@property (nonatomic,copy) NSString *placeHolderStr;


@end

@implementation LNTextView

#pragma mark - textView初始化

// MARK : - 重新绘制占位符
- (void)setPlaceHolder:(NSString *)placeHolder{
    
    _placeHolder = placeHolder;
    _placeHolderStr = placeHolder;
    
    [self setNeedsDisplay];
    
}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    
    if ([self.text isEqualToString:@""]) {
        
        self.placeHolderStr = self.placeHolder;
        [self setNeedsDisplay];
        
    }else{
        
        self.placeHolderStr = @"";
        [self setNeedsDisplay];
        
    }

    return YES;
    
}

// MARK : - 创建带占位符的textView

- (void)setupUI{
    // 设置默认字体 以防重绘报错
    self.font = [UIFont systemFontOfSize:16];
    
    // 设置代理
    self.delegate = self;
}

- (instancetype)initWithPlaceHolder:(NSString *)placeHolder{
    
    self = [super init];
    if (self) {
        
        self.placeHolder = placeHolder;
        self.placeHolderStr = placeHolder;
        [self setupUI];
    }
    return self;
}

// MARK : - 根据str进行重绘
- (void)drawRect:(CGRect)rect{
    
    
    [self.placeHolderStr drawAtPoint:CGPointMake(5, 8) withAttributes:@{NSFontAttributeName: self.font}];
    
}

@end
