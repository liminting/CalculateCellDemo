//
//  MTCellModel.h
//  CalculateCellDemo
//
//  Created by kerwin on 2017/2/24.
//  Copyright © 2017年 TL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTCellModel : NSObject

@property (nonatomic ,copy) NSString *text;
@property (nonatomic ,copy) NSString *icon;
@property (nonatomic,copy) NSString *name;
@property (nonatomic ,copy) NSString *picture;
@property (nonatomic, assign) BOOL vip;


@property (nonatomic,copy) NSString *picW;
@property (nonatomic,copy) NSString *picH;



-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)modelWithDict:(NSDictionary *)dict;


@end

