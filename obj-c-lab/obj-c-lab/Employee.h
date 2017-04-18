//
//  Employee.h
//  obj-c-lab
//
//  Created by Brandon Little on 4/17/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

#import "Person.h"

@interface Employee : Person <NSCopying>

//@property(strong, nonatomic) NSNumber *employeeNumber;
//@property(strong, nonatomic) NSNumber *yearsEmployed;
//@property(strong, nonatomic) NSString *managerName;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                      andManager:(NSString *)managerName;

//Getter
-(NSNumber *)employeeNumber;

-(NSNumber *)yearsEmployed;

-(NSString *)managerName;

//Setter
-(void)setEmployeeNumber:(NSNumber *)employeeNumber;

-(void)setYearsEmployed:(NSNumber *)yearsEmployed;

-(void)setManagerName:(NSString *)managerName;

@end
