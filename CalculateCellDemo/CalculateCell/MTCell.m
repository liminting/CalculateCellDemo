//
//  MTCell.m
//  CalculateCellDemo
//
//  Created by kerwin on 2017/2/24.
//  Copyright © 2017年 TL. All rights reserved.
//

#import "MTCell.h"



#define WLNameFont [UIFont systemFontOfSize:14]
#define WLTextFont [UIFont systemFontOfSize:15]

#define ScreenWidth [UIScreen mainScreen].bounds.size.width

#define kImageUrl @"http://119.10.29.85:11118/walkerbuy/resource/shopResource/img/426/product/3751/"
@interface MTCell()
@property (nonatomic,strong) UIImageView *iconView;
@property (nonatomic,strong) UILabel *nameView;
@property (nonatomic,strong) UILabel *textView;
@property (nonatomic,strong) UIImageView *pictureView;
@end
@implementation MTCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.iconView=[[UIImageView alloc] init];
        [self.contentView addSubview:self.iconView];
        
        
        self.nameView=[[UILabel alloc] init];
        self.nameView.font=WLNameFont;
        [self.contentView addSubview:self.nameView];
        
        
        
        self.textView=[[UILabel alloc] init];
        self.textView.numberOfLines =0;
        self.textView.font=WLTextFont;
        [self.contentView addSubview:self.textView];
        
        
        self.pictureView=[[UIImageView alloc] init];
        [self.contentView addSubview:self.pictureView];
        
    }
    return self;
}


-(void)showCellWithModel:(MTCellFrameModel *)frameModel indexPath:(NSIndexPath *)indexPath
{
    _modelFrame=frameModel;
    
    [self settingData:(NSIndexPath *)indexPath];
    
    
    [self settingFrame];
}

-(void)settingData:(NSIndexPath *)tager
{
    MTCellModel *model=self.modelFrame.cellModel;
    
    self.iconView.image=[UIImage imageNamed:model.icon];
    
    self.nameView.text=model.name;
    
    self.textView.text=model.text;
    if (model.picture) {
        self.pictureView.hidden=NO;
        
        
        NSString *imageUrl=[NSString stringWithFormat:@"%@%@",kImageUrl,model.picture];
        
        [self.pictureView sd_setImageWithURL:[NSURL URLWithString:imageUrl] placeholderImage:[UIImage imageNamed:@"img_default@2x.png"] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
            
            NSLog(@"%@ %@",image,imageURL);
            if ([model.picH isEqualToString:@"44"]) {
                NSLog(@"qwrqwqeqweqeqw");
                NSDictionary * userInfo = @{@"Height" : @(image.size.height*0.5),@"indexPath":tager};
                
                [[NSNotificationCenter defaultCenter] postNotificationName:@"SelectionViewController" object:nil userInfo:userInfo];
            }
        }];
    }
    else
    {
        self.pictureView.hidden=YES;
    }
    
}



-(void)settingFrame
{
    self.iconView.frame=self.modelFrame.iconF;
    
    self.nameView.frame=self.modelFrame.nameF;
    
    self.textView.frame=self.modelFrame.textF;
    
    if (self.modelFrame.cellModel.picture) {
        self.pictureView.frame=self.modelFrame.pictureF;
    }
}

@end
