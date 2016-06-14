//
//  MainViewController.m
//  归档与解当
//
//  Created by 荣耀iMac on 16/6/14.
//  Copyright © 2016年 GloriousSoftware. All rights reserved.
//

//http://employee.pzfw.net/interface/NewGetEmployeeList.aspx?shopCode=201603310001

#import "MainViewController.h"
#import "MyCell.h"
#import "Tool.h"
#import "Model.h"

@interface MainViewController ()

@property (nonatomic,strong)NSMutableArray *dataArray;

@end

@implementation MainViewController

-(NSMutableArray *)dataArray
{
    if (_dataArray == nil) {
        self.dataArray = [NSMutableArray array];
    }
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupData];
    
    self.title = @"归档与解档";
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


#pragma mark - Table view data source

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyCell *cell = [MyCell cellWithTableView:tableView];
    cell.model = self.dataArray[indexPath.row];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}




-(void)setupData
{
    NSDictionary *dict = @{
                           @"employeId": @"54",
                           @"code": @"0054",
                           @"password": @"",
                           @"name": @"廉玉佳管理",
                           @"jobName": @"荣耀售后管理端",
                           @"jobCode": @"005",
                           @"lastModifiedTicket": @"635960664567958000",
                           @"isRebate": @"True",
                           @"phone": @"18614240399"
                           };
    
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES) ; //得到documents的路径，为当前应用程序独享
    NSString *documentD = [paths objectAtIndex:0];
    NSString *configFile = [documentD stringByAppendingPathComponent:@"user.plist"]; //得到documents目录下dujw.plist配置文件的路径
    
    [dict writeToFile:configFile atomically:YES];
    
    NSLog(@"%@",NSHomeDirectory());

   
    Model *user = [Model initWithDict:dict];
    
    [Tool save:user];
    
    self.dataArray = (NSMutableArray *)@[dict];

}

@end
