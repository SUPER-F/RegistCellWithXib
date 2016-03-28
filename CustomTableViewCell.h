//
//  CustomTableViewCell.h
//  RegistCellWithXib
//
//  Created by wangning on 15/8/10.
//  Copyright (c) 2015年 IT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell{
    
    UIButton      *_cellButton;
}
//代理一定要用assign 否则会造成循环引用
@property (nonatomic,assign)id delegate;

@end


@protocol CustomDelegate <NSObject>

//默认必须实现的代理方法
-(void)cellButtonClick:(UIButton*)sender;
@end
