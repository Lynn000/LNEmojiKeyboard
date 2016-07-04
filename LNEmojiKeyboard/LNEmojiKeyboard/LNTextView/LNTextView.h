//
//  LNTextView.h
//  LNEmojiKeyboard
//
//  Created by David on 16/7/4.
//  Copyright © 2016年 topcoders. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LNTextView : UITextView

// 占位符
@property (nonatomic,copy) NSString *placeHolder;

// 创建带占位符的textView
- (instancetype)initWithPlaceHolder:(NSString *)placeHolder;

@end
