//
//  NSString+Reverse.m
//  ReversedStringTest
//
//  Created by Aleksandr Pronin on 10/19/16.
//  Copyright © 2016 Aleksandr Pronin. All rights reserved.
//

#import "NSString+Reverse.h"

@implementation NSString (Reverse)

+ (NSString *)reversedStringWithString:(NSString *)initialString {
    NSInteger index = [initialString length] - 1;
    NSMutableString *reversedString = [NSMutableString stringWithCapacity:[initialString length]];
    while (index >= 0) {
        NSRange charRange = [initialString rangeOfComposedCharacterSequenceAtIndex:index];
        [reversedString appendString:[initialString substringWithRange:charRange]];
        index -= charRange.length;
    }
    return reversedString;
}

@end
