//
//  ConfigWindowController.h
//  oimap
//
//  Created by Martin Balfanz on 01/12/14.
//  Copyright (c) 2014 Martin Balfanz. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ConfigWindowController : NSWindowController

@property(strong) IBOutlet NSWindow *configWindow;
@property(weak) IBOutlet NSTextField *intervalTextField;
@property(weak) IBOutlet NSButton *muCheckbox;
@property(weak) IBOutlet NSButton *saveButton;
@property(weak) IBOutlet NSButton *cancelButton;

- (void)showWindow:(id)sender;
- (IBAction)saveButtonAction:(id)sender;
- (IBAction)cancelButtonAction:(id)sender;

@end
