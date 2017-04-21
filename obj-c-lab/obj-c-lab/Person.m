//
//  Person.m
//  obj-c-lab
//
//  Created by Brandon Little on 4/17/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          andAge:(NSNumber *)age{
    
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
    }
    return self;
}

-(id)copyWithZone:(NSZone *)zone{
    Person *person = [[[self class] alloc]init];
    
    person.firstName = self.firstName;
    person.lastName = self.lastName;
    person.age = self.age;
    
    return person;
}

//Setters
-(void)setFirstName:(NSString *)firstName{
    if (_firstName != firstName) {
        
        [firstName retain];
        [_firstName release];
        
        _firstName = firstName;
    }
}
-(void)setLastName:(NSString *)lastName{
    
    if (_lastName != lastName) {
        
        [lastName retain];
        [_lastName release];
        
        _lastName = lastName;
    }
    
}
-(void)setAge:(NSNumber *)age{
    
    if (_age != age) {
        
        [age retain];
        [_age release];
        
        _age = age;
        
    }
    
}

@end
