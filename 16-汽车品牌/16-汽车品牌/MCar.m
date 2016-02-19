//
//  MCar.m
//  16-汽车品牌
//
//  Created by mapengfei on 16/1/23.
//  Copyright © 2016年 mapengfei. All rights reserved.
//

#import "MCar.h"

@implementation MCar

- (instancetype)initWithDict:(NSDictionary *)dict
{

    if (self = [super init]) {
        
        [self setValuesForKeysWithDictionary:dict];
        
    }
    
    return self;
}


+ (instancetype)carWithDict:(NSDictionary *)dict
{

    return [[self alloc] initWithDict:dict];
}
@end
