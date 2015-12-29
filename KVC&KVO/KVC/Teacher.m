//
//  Teacher.m
//  KVC&KVO
//
//  Created by 洪晨希 on 15/12/29.
//  Copyright © 2015年 洪晨希. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (NSString *)description{
    
    NSString *str = [NSString stringWithFormat:@"<%@：%p>,{name:%@}",[self class],self,self.name];
    return str;
    
}

@end
