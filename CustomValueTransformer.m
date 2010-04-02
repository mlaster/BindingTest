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
    return [NSArray class];
//    return [NSString class];
}

//- (id)transformedValue:(id)value {
//    NSString *retValue = value;
//    
//    NSLog(@"TRACE: transformedValue: %@ (%@)", value, [value class]);
//
//// Commented out because the caller is expecting this to be an NSArray
//// and is calling -count on it...
//    
////    retValue = [NSString stringWithFormat:@"%lu: %@",
////                [value valueForKey:@"status"],
////                [value valueForKey:@"message"]];
//
//    return retValue;
//}

- (id)transformedValue:(id)value {
    NSArray *retValue = value;
    NSMutableArray *workArray = [NSMutableArray array];
    
    NSLog(@"TRACE: transformedValue: %@ (%@)", value, [value class]);
    for (NSDictionary *dict in value) {
        [workArray addObject:[NSString stringWithFormat:@"%@: %@",
                              [dict valueForKey:@"status"],
                              [dict valueForKey:@"message"]]];
    }

    retValue = [[workArray copy] autorelease];
    
    return retValue;
}

@end
