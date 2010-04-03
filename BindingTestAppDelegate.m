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
@synthesize arrayController;
@synthesize selectedDictionary;

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

- (void) setSelectedDictionary:(NSDictionary *) inDictionary {
    NSLog(@"TRACE: setSelectedDictionary: %@", [inDictionary class]);
    if (selectedDictionary != inDictionary) {
        [selectedDictionary release];
        selectedDictionary = [inDictionary retain];
    }
}
@end
