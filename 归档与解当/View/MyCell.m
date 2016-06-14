//
//  MyCell.m
//  归档与解当
//
//  Created by 荣耀iMac on 16/6/14.
//  Copyright © 2016年 GloriousSoftware. All rights reserved.
//

#import "MyCell.h"
#import "Model.h"
#import "Tool.h"

@interface MyCell()

@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UILabel *subTitle;

@property (weak, nonatomic) IBOutlet UILabel *phone;


@end

@implementation MyCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    // NSLog(@"cellForRowAtIndexPath");
    static NSString *identifier = @"cellid";
    // 1.缓存中取
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    // 2.创建
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"MyCell" owner:self options:nil]lastObject];
    }
    
    return cell;
}


-(void)setModel:(Model *)model
{
    _model = model;
    
    NSLog(@"%@",[Tool user].jobName);
    
    self.name.text = [Tool user].jobName;
    self.phone.text = @"13432523";
    self.subTitle.text = @"bbb";
    
}

@end
