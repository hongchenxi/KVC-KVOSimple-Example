//
//  Person.h
//  KVC&KVO
//
//  Created by 洪晨希 on 15/12/29.
//  Copyright © 2015年 洪晨希. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Teacher;
@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) Teacher *teacher;


@end
