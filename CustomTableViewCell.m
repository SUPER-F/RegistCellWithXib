//
//  CustomTableViewCell.m
//  RegistCellWithXib
//
//  Created by wangning on 15/8/10.
//  Copyright (c) 2015年 IT. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (void)awakeFromNib {
    // Initialization code
    _cellButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    _cellButton.frame = CGRectMake(0, 0, 100, 30);
    
    [_cellButton setTitle:@"button" forState:UIControlStateNormal];
    
    _cellButton.backgroundColor = [UIColor redColor];
    
    [_cellButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_cellButton];

}

//button的点击方法  代理方法在此响应
-(void)buttonClick:(UIButton*)sender{
    
    NSLog(@"button点击方法");
    
    if ([self.delegate respondsToSelector:@selector(cellButtonClick:)]) {
        
        [self.delegate cellButtonClick:sender];
        
    }
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)dealloc{
    
    [_cellButton release];
    [super dealloc];
}

@end
