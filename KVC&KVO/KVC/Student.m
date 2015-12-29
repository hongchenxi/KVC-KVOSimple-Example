//
//  Student.m
//  KVC&KVO
//
//  Created by 洪晨希 on 15/12/29.
//  Copyright © 2015年 洪晨希. All rights reserved.
//

#import "Student.h"

@implementation Student

- (NSString *)description{
    
    NSString *str = [NSString stringWithFormat:@"<%@：%p>,{name:%@}",[self class],self,self.studentName];
    return str;
    
}

@end
