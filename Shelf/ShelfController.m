//
//  ShelfController.m
//  Shelf
//
//  Created by Tom Insam on 2013/12/03.
//  Copyright (c) 2013 Tom Insam. All rights reserved.
//

#import "ShelfController.h"
#import <GRMustache.h>

@interface ShelfController ()

@end

@implementation ShelfController

- (void)windowDidLoad
{
    [super windowDidLoad];
    self.titleView.stringValue = @"Title";
    [self updateHTML];
    
}

- (void)updateHTML;
{
    static GRMustacheTemplate *template;
    if (template == nil) {
        template = [GRMustacheTemplate templateFromResource:@"template" bundle:nil error:nil];
    }
    NSError *err = nil;
    NSString *rendered = [template renderObject:@{} error:&err];
    [self.webView.mainFrame loadHTMLString:rendered baseURL:[NSBundle mainBundle].resourceURL];
}

#pragma mark WebView Delegate methods

- (void)webView:(WebView *)webView
decidePolicyForNavigationAction:(NSDictionary *)actionInformation
        request:(NSURLRequest *)request
          frame:(WebFrame *)frame
decisionListener:(id < WebPolicyDecisionListener >)listener
{
    NSUInteger navigationType = [actionInformation[WebActionNavigationTypeKey] unsignedIntegerValue];
    if (navigationType != WebNavigationTypeLinkClicked) {
        [listener use];
        return;
    }

    [[NSWorkspace sharedWorkspace] openURL:request.URL];
    [listener ignore];
}

@end
