//
//  EmployeeDatabase.m
//  obj-c-lab
//
//  Created by Brandon Little on 4/18/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

#import "EmployeeDatabase.h"

@interface EmployeeDatabase ()

@property(strong, nonatomic) NSArray *employees;

@end

@implementation EmployeeDatabase

+(instancetype)shared {
    
    static EmployeeDatabase *shared = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[[self class] alloc]init];
    });
    
    return shared;
    
}

//MARK: Helper methods
-(NSURL *)documentsDirectory{
    
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    return documentsDirectoryURL;
    
}

-(NSURL *)archiveURL{
    return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
}

@end
