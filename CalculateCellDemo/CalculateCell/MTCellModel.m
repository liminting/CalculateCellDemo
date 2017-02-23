//
//  MTCellModel.m
//  CalculateCellDemo
//
//  Created by kerwin on 2017/2/24.
//  Copyright © 2017年 TL. All rights reserved.
//

#import "MTCellModel.h"

@implementation MTCellModel
-(instancetype)initWithDict:(NSDictionary *)dict
{
    if (self=[super init]) {
        [self setValuesForKeysWithDictionary:dict];
        
        if (self.picture) {
            [self setValue:@"350" forKey:@"picW"];
            [self setValue:@"44" forKey:@"picH"];
        }
        
    }
    return self;
}
+(instancetype)modelWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

@end
