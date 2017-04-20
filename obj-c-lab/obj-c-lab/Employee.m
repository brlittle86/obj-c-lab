//
//  Employee.m
//  obj-c-lab
//
//  Created by Brandon Little on 4/17/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

#import "Employee.h"

@implementation Employee
NSNumber *_employeeNumber;
NSNumber *_yearsEmployed;
NSString *_managerName;

//Getter
-(NSNumber *)employeeNumber{
    return _employeeNumber;
}

-(NSNumber *)yearsEmployed{
    return _yearsEmployed;
}

-(NSString *)managerName{
    return _managerName;
}

//Setter
-(void)setEmployeeNumber:(NSNumber *)employeeNumber {
    _employeeNumber = employeeNumber;
}

-(void)setYearsEmployed:(NSNumber *)yearsEmployed {
    _yearsEmployed = yearsEmployed;
}

-(void)setManagerName:(NSString *)managerName {
    _managerName = managerName;
}

@end
