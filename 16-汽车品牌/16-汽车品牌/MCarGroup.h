//
//  MCarGroup.h
//  16-汽车品牌
//
//  Created by mapengfei on 16/1/23.
//  Copyright © 2016年 mapengfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCarGroup : NSObject

@property (nonatomic,copy)NSString *title;

@property (nonatomic,strong)NSArray *cars;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)cargroupWithDict:(NSDictionary *)dict;
@end
