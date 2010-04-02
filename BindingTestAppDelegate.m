//
//  BindingTestAppDelegate.m
//  BindingTest
//
//  Created by Mike Laster on 4/2/10.
//  Copyright 2010 Apple, Inc. All rights reserved.
//

#import "BindingTestAppDelegate.h"


#import "CustomValueTransformer.h"

@implementation BindingTestAppDelegate

@synthesize window;

- (NSDictionary *)settings {
    static NSDictionary *_settings = nil;
    
    if (_settings == nil) {
        NSURL *url = [[NSBundle mainBundle] URLForResource:@"settings" withExtension:@"plist"];
        _settings = [[NSDictionary alloc] initWithContentsOfURL:url];
    }
    
    return _settings;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    CustomValueTransformer *transformer = [[[CustomValueTransformer alloc] init] autorelease];
    [NSValueTransformer setValueTransformer:transformer
                                    forName:@"CustomValueTransformer"];

	 NSLog(@"settings: %@", [self settings]);
}

@end
