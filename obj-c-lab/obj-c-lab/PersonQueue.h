//
//  PersonQueue.h
//  obj-c-lab
//
//  Created by Brandon Little on 4/17/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@protocol PersonQueue <Person>

@optional
-(int)count;

@required
-(void)enqueue:(Person *)person;

-(Person *)dequeue;

@end
