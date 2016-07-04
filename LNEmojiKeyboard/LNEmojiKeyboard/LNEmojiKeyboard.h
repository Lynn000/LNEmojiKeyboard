//
//  LNEmojiKeyboard.h
//  LNEmojiKeyboard
//
//  Created by David on 16/7/4.
//  Copyright © 2016年 topcoders. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kKeyboardHeight 216
#define kScreenWidth [UIScreen mainScreen].bounds.size.width


@interface LNEmojiKeyboard : UIView

// 根据所给包名称 文件路径数组 设置表情包数据
- (instancetype)initWithBundleName:(NSString *)bundleName andFilePathArray:(NSArray<NSString *> *)filePathArray;



@end
