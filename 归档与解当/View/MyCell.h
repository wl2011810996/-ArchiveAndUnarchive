//
//  MyCell.h
//  归档与解当
//
//  Created by 荣耀iMac on 16/6/14.
//  Copyright © 2016年 GloriousSoftware. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Model;
@interface MyCell : UITableViewCell


@property (nonatomic,strong)Model *model;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
