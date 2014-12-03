//
//  ConfigWindowController.h
//  oimap
//
//  Created by Martin Balfanz on 01/12/14.
//  Copyright (c) 2014 Martin Balfanz. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ConfigWindowController : NSWindowController

@property(weak) IBOutlet NSTextField *intervalTextField;
@property(weak) IBOutlet NSButton *muCheckbox;
@property(weak) IBOutlet NSButton *saveButton;
@property(weak) IBOutlet NSButton *canelButton;

- (void)showWindow:(id)sender;
- (IBAction)saveButtonAction:(id)sender;

@end
