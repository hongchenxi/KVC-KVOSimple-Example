//
//  Teacher.h
//  KVC&KVO
//
//  Created by 洪晨希 on 15/12/29.
//  Copyright © 2015年 洪晨希. All rights reserved.
//

#import "Person.h"
@class Student;
@interface Teacher : Person

@property (nonatomic, strong) Student *student;
@end
