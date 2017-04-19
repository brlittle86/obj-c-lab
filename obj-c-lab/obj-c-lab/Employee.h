//
//  Employee.h
//  obj-c-lab
//
//  Created by Brandon Little on 4/17/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

#import "Person.h"

@interface Employee : Person <NSCopying, NSCoding>

@property(strong, nonatomic) NSString *email;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                           email:(NSString *)email
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
