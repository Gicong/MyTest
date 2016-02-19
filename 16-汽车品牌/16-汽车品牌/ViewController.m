//
//  ViewController.m
//  16-汽车品牌
//
//  Created by mapengfei on 16/1/21.
//  Copyright © 2016年 mapengfei. All rights reserved.
//

#import "ViewController.h"
#import "MCar.h"
#import "MCarGroup.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *table;
@property (nonatomic,strong) NSArray *groups;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.table.dataSource = self;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)groups
{
    if (!_groups) {
        
        NSString *path =  [[NSBundle mainBundle] pathForResource:@"cars_total.plist" ofType:nil];
        
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *groupArray = [NSMutableArray array];
        
        for (NSDictionary *dict in array) {
            
            MCarGroup *group = [MCarGroup cargroupWithDict:dict];
            
            [groupArray addObject:group];
        }
        
        _groups = groupArray;
    }
    

    return _groups;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    MCarGroup *group = self.groups[section];
    
    return group.cars.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID= @"car";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    MCarGroup *group = self.groups[indexPath.section];
    MCar *car = group.cars[indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:car.icon];
    cell.textLabel.text = car.name;
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    MCarGroup *group = self.groups[section];
    return group.title;
}

/**
 *  返回右边索引条显示的字符串数据
 */
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return [self.groups valueForKeyPath:@"title"];
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}
@end

