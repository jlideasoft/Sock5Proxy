//
//  AppDelegate.m
//  Watcher
//
//  Created by junlei on 2019/2/24.
//  Copyright © 2019 Hp. All rights reserved.
//https://www.cnblogs.com/Chilam007/p/6973990.html
#import "NSSSServer.h"
#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) NSSSServer *ssserver;
@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.windowController = [[MainWindowController alloc]init];
    [self.windowController showWindow:self];
    
    self.ssserver = [NSSSServer sharedInstance];
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    if ([self.ssserver started]) {
        [self.ssserver stop];
    }
}
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
    return YES;
}

@end
