//
//  Model.h
//  归档与解当
//
//  Created by 荣耀iMac on 16/6/14.
//  Copyright © 2016年 GloriousSoftware. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject<NSCoding>

/*
 
 "id": "54",
 "code": "0054",
 "password": "",
 "name": "廉玉佳管理",
 "jobName": "荣耀售后管理端",
 "jobCode": "005",
 "lastModifiedTicket": "635960664567958000",
 "isRebate": "True",
 "phone": "18614240399"
 
 */

@property (nonatomic, strong) NSString *employeId;
@property (nonatomic, strong) NSString *code;
@property (nonatomic, strong) NSString *password;
/** 姓名 */
@property (nonatomic, strong) NSString *name;
/** jobName */
@property (nonatomic, strong) NSString *jobName;
/** 最后一次修改时间 */
@property (nonatomic, strong) NSString *lastModifiedTicket;
/** 是否允许选择此员工 */
@property (nonatomic, strong) NSString *isRebate;
@property (nonatomic, strong) NSString *phone;

+(Model *)initWithDict:(NSDictionary *)dict;

@end
