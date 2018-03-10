#import "app.h"

@implementation Application

- (void) run
{
    [[NSNotificationCenter defaultCenter]
        postNotificationName: NSApplicationWillFinishLaunchingNotification
                      object: NSApp];
    [[NSNotificationCenter defaultCenter]
        postNotificationName: NSApplicationDidFinishLaunchingNotification
                      object: NSApp];

    running = YES;

    do {
        NSEvent *event = [self nextEventMatchingMask: NSEventMaskAny
                                           //untilDate: [NSDate distantFuture]
                                           untilDate: nil
                                              inMode: NSDefaultRunLoopMode
                                             dequeue: YES];
        [self sendEvent: event];
        [self updateWindows];
    } while (running);
}

- (void) terminate: (id) sender
{
    running = NO;
}

@end
