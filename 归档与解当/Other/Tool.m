//
//  Tool.m
//  归档与解当
//
//  Created by 荣耀iMac on 16/6/14.
//  Copyright © 2016年 GloriousSoftware. All rights reserved.
//

#import "Tool.h"
#import "Model.h"

#define WLUserFilepath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"user.data"]

@implementation Tool

+ (void)save:(Model *)user
{
    // 归档
    [NSKeyedArchiver archiveRootObject:user toFile:WLUserFilepath];
}

+ (Model *)user
{
    // 读取帐号
    Model *user = [NSKeyedUnarchiver unarchiveObjectWithFile:WLUserFilepath];

    return user;
}

@end
