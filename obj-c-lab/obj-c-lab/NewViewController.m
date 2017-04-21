//
//  NewViewController.m
//  obj-c-lab
//
//  Created by Brandon Little on 4/18/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

#import "NewViewController.h"
#import "EmployeeDatabase.h"
#import "MeaninglessCounter.h"

static void *kvoContext = &kvoContext;

@interface NewViewController () <UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) MeaninglessCounter *meaninglessCounter;
@property (weak, nonatomic) IBOutlet UITableView *table;

@end

@implementation NewViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.table.dataSource = self;
    
    self.meaninglessCounter = [[MeaninglessCounter alloc]init];
    
    [self setValue:@25 forKeyPath:@"meaninglessCounter.meaninglessCount"];
    
    NSLog(@"%i", (int)self.meaninglessCounter.meaninglessCount);
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadView) name:@"reloadData" object:nil];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self addObserver:self forKeyPath:@"self.meaninglessCounter.meaninglessCount" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:kvoContext];
    
    [self.meaninglessCounter incrementMeaninglessCounter];
    
    [self.meaninglessCounter incrementMeaninglessCounter];
    
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [self removeObserver:self forKeyPath:@"self.meaninglessCounter.meaninglessCount"];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    if (context == kvoContext) {
        
        NSLog(@"Meaningless counter is now: %i", (int)self.meaninglessCounter.meaninglessCount);
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
    
}

-(void)reloadView{
    [self.table reloadData];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [[[EmployeeDatabase shared] employeeAtIndex:(int)indexPath.row] firstName];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[EmployeeDatabase shared] count];
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [[EmployeeDatabase shared] removeEmployeeAtIndex:(int)indexPath.row];
        [self.table reloadData];
    }
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return true;
}

@end
