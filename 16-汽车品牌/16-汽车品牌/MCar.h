//
//  MCar.h
//  16-汽车品牌
//
//  Created by mapengfei on 16/1/23.
//  Copyright © 2016年 mapengfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCar : NSObject

@property (nonatomic,copy)NSString *icon;
@property (nonatomic,copy)NSString *name;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)carWithDict:(NSDictionary *)dict;
@end
