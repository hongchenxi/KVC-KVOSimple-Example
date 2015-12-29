//
//  KVOClass.m
//  KVC&KVO
//
//  Created by 洪晨希 on 15/12/29.
//  Copyright © 2015年 洪晨希. All rights reserved.
//

#import "KVOClass.h"

@implementation KVOClass

- (instancetype)init{
    if (self == [super init]) {
        [self addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:@"name"];
    }
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    
    if ([keyPath isEqualToString:@"name"]) {
        NSLog(@"name值改变了");
        NSLog(@"改变的值%@",[change valueForKey:@"new"]);
        
    }else{
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

- (void)dealloc{
    
    NSLog(@"kvo销毁了");
    [self removeObserver:self forKeyPath:@"name"];
}

@end
