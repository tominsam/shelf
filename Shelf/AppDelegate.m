//
//  AppDelegate.m
//  Shelf
//
//  Created by Tom Insam on 2013/12/03.
//  Copyright (c) 2013 Tom Insam. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSLog(@"applicationDidFinishLaunching");
    [MagicalRecord setupCoreDataStackWithStoreNamed:@"Store.sqlite"];
    
    self.shelfController = [[ShelfController alloc] initWithWindowNibName:@"MainWindow"];
    [self.shelfController showWindow:nil];
    [self.shelfController.window makeKeyAndOrderFront:nil];
}

- (void)applicationWillTerminate:(NSNotification *)notification
{
    [MagicalRecord cleanUp];
}

@end
