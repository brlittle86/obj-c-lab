//
//  NewViewController.m
//  obj-c-lab
//
//  Created by Brandon Little on 4/18/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

#import "NewViewController.h"
#import "EmployeeDatabase.h"

@interface NewViewController () <UITableViewDelegate,UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UITableView *table;
@property (strong,nonatomic) NSMutableArray *allEmployees;

@end

@implementation NewViewController

- (void)viewDidLoad {
    
    if ([_allEmployees count] == 0) {
        _allEmployees = [[NSMutableArray alloc]init];
    }
    [super viewDidLoad];
    
    Employee *original = [[Employee alloc]initWithFirstName:@"Dave" lastName:@"Little" age:@30 email:@"brlittle86@gmail.com" yearsEmployed:@1 andManager:@"Eve"];
    
    [[EmployeeDatabase shared] add: original];
    
    self.table.delegate = self;
    self.table.dataSource = self;
    
    [_allEmployees addObjectsFromArray:[[EmployeeDatabase shared] allEmployees]];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [_allEmployees[indexPath.row] firstName];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.allEmployees.count;
}

@end
