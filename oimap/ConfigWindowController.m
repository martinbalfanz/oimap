//
//  ConfigWindowController.m
//  oimap
//
//  Created by Martin Balfanz on 01/12/14.
//  Copyright (c) 2014 Martin Balfanz. All rights reserved.
//

#import "ConfigWindowController.h"

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

@end
