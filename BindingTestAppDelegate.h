//
//  BindingTestAppDelegate.h
//  BindingTest
//
//  Created by Mike Laster on 4/2/10.
//  Copyright 2010 Apple, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BindingTestAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    NSArrayController *arrayController;
    NSDictionary *selectedDictionary;
}

@property (assign) IBOutlet NSWindow *window;
@property (retain,nonatomic) IBOutlet NSArrayController *arrayController;
@property (retain,nonatomic) IBOutlet NSDictionary *selectedDictionary;

@property (retain,readonly,nonatomic) NSDictionary *settings;

@end
