//
//  main.m
//  KVC&KVO
//
//  Created by 洪晨希 on 15/12/29.
//  Copyright © 2015年 洪晨希. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Teacher.h"
#import "Student.h"
#import "KVOClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *mPerson = [[Person alloc]init];
        [mPerson setValue:@"小明" forKey:@"name"];
        NSLog(@"%@-%@",mPerson,[mPerson valueForKey:@"name"]);
        
        Person *mPerson2 = [[Person alloc]init];
        [mPerson2 setValue:@"小李" forKeyPath:@"name"];
        NSLog(@"%@-%@",mPerson2,[mPerson2 valueForKeyPath:@"name"]);
        
        
        Person *mPerson3 = [[Person alloc]init];
        Teacher *mTeacher = [[Teacher alloc]init];
        Student *mStudent = [[Student alloc]init];
        mPerson3.teacher = mTeacher;
        mTeacher.student = mStudent;
        [mPerson3 setValue:@"新同学" forKeyPath:@"teacher.student.studentName"];
        NSLog(@"%@",[mPerson3 valueForKeyPath:@"teacher.student.studentName"]);
        
        NSLog(@"%@",[mStudent valueForKey:@"studentName"]);
        
        
        KVOClass *kvoTest = [[KVOClass alloc]init];
//        kvoTest.name = @"cx";
        [kvoTest setValue:@"cx" forKey:@"name"];
        
    }
    return 0;
}
