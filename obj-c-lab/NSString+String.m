//
//  NSString+String.m
//  obj-c-lab
//
//  Created by Brandon Little on 4/17/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

#import "NSString+String.h"

@implementation NSString (String)

-(NSArray *)toArray{
    return [self componentsSeparatedByString:@" "];
}

-(NSString *)reversedString{
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [self length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[self substringWithRange:subStrRange]];
    }
    
    NSLog(@"%@", reversedString);
    return reversedString;
}

@end
