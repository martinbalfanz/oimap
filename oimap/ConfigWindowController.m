//
//  ConfigWindowController.m
//  oimap
//
//  Created by Martin Balfanz on 01/12/14.
//  Copyright (c) 2014 Martin Balfanz. All rights reserved.
//

#import "ConfigWindowController.h"
#import "ConfigHelper.h"

@interface ConfigWindowController ()

@end

@implementation ConfigWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (id)init {
    return [self initWithWindowNibName:@"ConfigWindowController" owner:self];
}

- (void)showWindow:(id)sender {
    [super showWindow:sender];
}

- (IBAction)saveButtonAction:(id)sender {
    NSDictionary *data = @{@"mu": @([self.muCheckbox state] == NSOnState), @"interval": [self.intervalTextField stringValue]};
    
    [ConfigHelper updateConfig:data];
}

@end
