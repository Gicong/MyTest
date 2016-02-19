//
//  MCarGroup.m
//  16-汽车品牌
//
//  Created by mapengfei on 16/1/23.
//  Copyright © 2016年 mapengfei. All rights reserved.
//

#import "MCarGroup.h"
#import "MCar.h"
@implementation MCarGroup
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        
        self.title = dict[@"title"];
        
        //取出数组，字典里可以装数组
        NSArray *dictArray = dict[@"cars"];
        
        NSMutableArray *carArray = [NSMutableArray array];
        
        for (NSDictionary *dict in dictArray) {
            
            MCar *car = [MCar carWithDict:dict];
            
            [carArray addObject:car];
            
        }
        self.cars = carArray;
    }
    
    return self;
}

+ (instancetype)cargroupWithDict:(NSDictionary *)dict
{

    return [[self alloc] initWithDict:dict];
}
@end
