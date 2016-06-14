//
//  Model.m
//  归档与解当
//
//  Created by 荣耀iMac on 16/6/14.
//  Copyright © 2016年 GloriousSoftware. All rights reserved.
//

#import "Model.h"
#import <objc/message.h>

@implementation Model

+(Model *)initWithDict:(NSDictionary *)dict
{
   return  [[self alloc]initWithDict:dict];
}

-(Model *)initWithDict:(NSDictionary *)dict
{
    Model *model = [[Model alloc]init];
    
    model.employeId = [dict objectForKey:@"employeId"];
    model.code = [dict objectForKey:@"code"];
    model.password = [dict objectForKey:@"password"];
    model.name = [dict objectForKey:@"name"];
    model.jobName = [dict objectForKey:@"jobName"];
    model.lastModifiedTicket = [dict objectForKey:@"lastModifiedTicket"];
    model.isRebate = [dict objectForKey:@"isRebate"];
    model.phone = [dict objectForKey:@"phone"];
    
    return model;
}

-(instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        unsigned int count = 0;
        Ivar *ivars = class_copyIvarList([Model class], &count);
        for (int i = 0; i<count; i++) {
            // 取出i位置对应的成员变量
            Ivar ivar = ivars[i];
            // 查看成员变量
            const char *name = ivar_getName(ivar);
            // 归档
            NSString *key = [NSString stringWithUTF8String:name];
            id value = [coder decodeObjectForKey:key];
            // 设置到成员变量身上
            [self setValue:value forKey:key];
            
        }
        free(ivars);
        
//        self.employeId = [coder decodeObjectForKey:@"employeId"];
//        self.code = [coder decodeObjectForKey:@"code"];
//        self.password = [coder decodeObjectForKey:@"password"];
//        self.name = [coder decodeObjectForKey:@"name"];
//        self.jobName = [coder decodeObjectForKey:@"jobName"];
//        self.lastModifiedTicket = [coder decodeObjectForKey:@"lastModifiedTicket"];
//        self.isRebate = [coder decodeObjectForKey:@"isRebate"];
//        self.phone = [coder decodeObjectForKey:@"phone"];
        
    }
    return self;
}


-(void)encodeWithCoder:(NSCoder *)aCoder
{
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([Model class], &count);
    for (int i = 0; i<count; i++) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        NSString *key =  [NSString stringWithUTF8String:name];
        [aCoder encodeObject:[self valueForKey:key] forKey:key];
    }
    
//    [aCoder encodeObject:self.employeId forKey:@"employeId"];
//    [aCoder encodeObject:self.code forKey:@"code"];
//    [aCoder encodeObject:self.password forKey:@"password"];
//    [aCoder encodeObject:self.name forKey:@"name"];
//    [aCoder encodeObject:self.jobName forKey:@"jobName"];
//    [aCoder encodeObject:self.lastModifiedTicket forKey:@"lastModifiedTicket"];
//    [aCoder encodeObject:self.isRebate forKey:@"isRebate"];
//    [aCoder encodeObject:self.phone forKey:@"phone"];
}

@end
