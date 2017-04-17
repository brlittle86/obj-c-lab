//
//  ViewController.m
//  obj-c-lab
//
//  Created by Brandon Little on 4/17/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

#import "ViewController.h"
#import "NSString+String.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *sampleString = @"I like potatoes.";
    
    NSArray *sampleArray = [sampleString toArray];
    NSLog(@"%@", sampleArray);
    [sampleString reversedString];
    
}


@end
