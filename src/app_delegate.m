#import "app_delegate.h"
#import "view.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (id) init
{
    if (self = [super init]) {

        window = [[[NSWindow alloc] initWithContentRect: NSMakeRect(0, 0, 800, 600) styleMask: NSWindowStyleMaskTitled  | NSWindowStyleMaskClosable backing: NSBackingStoreBuffered defer: NO] autorelease];
        [window setTitle: @"test"];
        [window.contentView addSubview: [[[View alloc] initWithFrame: NSMakeRect(0, 0, 800, 600)] autorelease]];
        wincon = [[[WindowController alloc] initWithWindow: window] autorelease];
        [window setDelegate: wincon];
    }

    return self;
}

- (BOOL) applicationShouldTerminateAfterLastWindowClosed: (NSApplication *) sender
{
    /* TODO this no longer does anything */
    return YES;
}

- (void) applicationWillFinishLaunching: (NSNotification *) notification
{
    [window makeKeyAndOrderFront: nil];
}

- (void) applicationWillTerminate: (NSNotification *) notification
{
    [NSApp terminate: nil];
}

@end
