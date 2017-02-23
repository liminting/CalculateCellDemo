//
//  MTCell.h
//  CalculateCellDemo
//
//  Created by kerwin on 2017/2/24.
//  Copyright © 2017年 TL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTCellFrameModel.h"

@interface MTCell : UITableViewCell
@property (nonatomic,strong) MTCellFrameModel *modelFrame;

-(void)showCellWithModel:(MTCellFrameModel *)frameModel indexPath:(NSIndexPath *)indexPath;
@end
