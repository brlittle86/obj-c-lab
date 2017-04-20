//
//  ViewController.m
//  obj-c-lab
//
//  Created by Brandon Little on 4/17/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

#import "ViewController.h"
#import "NSString+String.h"
#import "EmployeeDatabase.h"
#import "Employee.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[EmployeeDatabase shared] allEmployees];
    
    Employee *original = [[Employee alloc]initWithFirstName:@"Brandon" lastName:@"Little" age:@30 email:@"brlittle86@gmail.com" yearsEmployed:@1 andManager:@"Eve"];
    
    [[EmployeeDatabase shared] add: original];
    
    Employee *newInstructor = [original copy];
    
    newInstructor.firstName = @"Mike";
    
    NSLog(@"%@", original.firstName);
    
    NSString *sampleString = @"I like potatoes.";
    
    NSArray *sampleArray = [sampleString toArray];
    NSLog(@"%@", sampleArray);
    [sampleString reversedString];
    
}


@end
