//
//  LNEmojiKeyboard.m
//  LNEmojiKeyboard
//
//  Created by David on 16/7/4.
//  Copyright © 2016年 topcoders. All rights reserved.
//

#import "LNEmojiKeyboard.h"

@implementation LNEmojiKeyboard

#pragma mark - 初始化
- (instancetype)initWithBundleName:(NSString *)bundleName andFilePathArray:(NSArray *)filePathArray{
    
    self = [super initWithFrame:CGRectMake(0, 0, kScreenWidth, kKeyboardHeight)];
    if (self){
        
        self.backgroundColor = [UIColor redColor];
        
    }
    return self;
}

@end
