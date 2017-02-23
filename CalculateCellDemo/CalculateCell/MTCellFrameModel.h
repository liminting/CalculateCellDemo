//
//  MTCellFrameModel.h
//  CalculateCellDemo
//
//  Created by kerwin on 2017/2/24.
//  Copyright © 2017年 TL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTCellModel.h"
@interface MTCellFrameModel : NSObject
@property (nonatomic, assign, readonly) CGRect iconF;
@property (nonatomic, assign,readonly) CGRect nameF;
@property (nonatomic,assign,readonly) CGRect textF;
@property (nonatomic,assign,readonly) CGRect pictureF;


@property (nonatomic,assign,readonly) CGFloat cellHeight;
@property (nonatomic,strong) MTCellModel *cellModel;

@end
