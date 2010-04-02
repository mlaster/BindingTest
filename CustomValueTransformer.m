//
//  CustomValueTransformer.m
//  BindingTest
//
//  Created by Mike Laster on 4/2/10.
//  Copyright 2010 Apple, Inc. All rights reserved.
//

#import "CustomValueTransformer.h"


@implementation CustomValueTransformer

+ (Class)transformedValueClass {
    return [NSString class];
}

- (id)transformedValue:(id)value {
    NSString *retValue = value;
    
    NSLog(@"TRACE: transformedValue: %@ (%@)", value, [value class]);
    
    return retValue;
}

@end
