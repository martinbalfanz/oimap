//
//  AppDelegate.m
//  oimap
//
//  Created by Martin Balfanz on 01/12/14.
//  Copyright (c) 2014 Martin Balfanz. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSMenu *mainMenu;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [self setupStatusItem];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void)setupStatusItem
{
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];

    [self.statusItem setTitle:@"oimap"];
//    [self.statusItem setAlternateImage:[NSImage imageNamed:@"name"]];
    [self.statusItem setHighlightMode:YES];
    [self.statusItem setMenu:[self setupMenu]];
}

- (NSMenu *)setupMenu
{
    NSMenu *menu = [[NSMenu alloc] init];
    [menu addItem:[NSMenuItem separatorItem]];
    [menu addItemWithTitle:@"Quit" action:@selector(terminate:) keyEquivalent:@"q"];
    
    return menu;
}

@end
