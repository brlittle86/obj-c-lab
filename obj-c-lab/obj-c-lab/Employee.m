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


-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                      andManager:(NSString *)managerName{
    
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    
    if (self){
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
    }
    
    return self;
    
}

-(id)copyWithZone:(NSZone *)zone{
    
    Employee *employee = [super copyWithZone:zone];
    
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    
    return employee;
    
}

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
