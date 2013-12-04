//
//  ShelfController.h
//  Shelf
//
//  Created by Tom Insam on 2013/12/03.
//  Copyright (c) 2013 Tom Insam. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface ShelfController : NSWindowController

@property (nonatomic, strong) IBOutlet NSTextField *titleView;
@property (nonatomic, strong) IBOutlet NSTextField *subtitleView;
@property (nonatomic, strong) IBOutlet NSImageView *imageView;
@property (nonatomic, strong) IBOutlet WebView *webView;

@end
