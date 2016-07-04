//
//  LNEmojiKeyboard.m
//  LNEmojiKeyboard
//
//  Created by David on 16/7/4.
//  Copyright © 2016年 topcoders. All rights reserved.
//

#import "LNEmojiKeyboard.h"

@interface LNEmojiKeyboard ()


// 表情包文件地址数组
@property (nonatomic,strong) NSArray<NSString *> *emojiDirPathArray;


@end

@implementation LNEmojiKeyboard

#pragma mark - 初始化
- (instancetype)initWithBundleName:(NSString *)bundleName andFilePathArray:(NSArray<NSString *> *)filePathArray{
    
    self = [super initWithFrame:CGRectMake(0, 0, kScreenWidth, kKeyboardHeight)];
    if (self){
        
        self.backgroundColor = [UIColor redColor];
        // 获得表情包地址
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:bundleName ofType:nil];
        // 获得表情文件地址
        NSMutableArray<NSString *> *filePathArrayM = [NSMutableArray array];
        [filePathArray enumerateObjectsUsingBlock:^(NSString * obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
            // 根据表情包地址进行拼接
            NSMutableString *strM = [NSMutableString stringWithFormat:@"%@",bundlePath];
            [strM appendFormat:@"/%@",obj];
            
            [filePathArrayM addObject:strM.copy];
        }];
        
        self.emojiDirPathArray = filePathArrayM.copy;
    }
    return self;
}

@end
