//
//  Tool.h
//  归档与解当
//
//  Created by 荣耀iMac on 16/6/14.
//  Copyright © 2016年 GloriousSoftware. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Model.h"

@interface Tool : NSObject

/**
 *  存储帐号
 */
+ (void)save:(Model *)user;

/**
 *  读取帐号
 */
+ (Model *)user;

@end
