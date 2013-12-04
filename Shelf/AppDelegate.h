//
//  AppDelegate.h
//  Shelf
//
//  Created by Tom Insam on 2013/12/03.
//  Copyright (c) 2013 Tom Insam. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ShelfController.h"
#import "Watcher.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic, strong) ShelfController *shelfController;
@property (nonatomic, strong) Watcher *watcher;

@end
