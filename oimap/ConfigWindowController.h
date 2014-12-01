//
//  ConfigWindowController.h
//  oimap
//
//  Created by Martin Balfanz on 01/12/14.
//  Copyright (c) 2014 Martin Balfanz. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ConfigWindowController : NSWindowController

@property (weak) IBOutlet NSTextField *intervalTextField;
@property (weak) IBOutlet NSButton *muCheckbox;

- (void)showWindow:(id)sender;

@end
