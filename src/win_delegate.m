#import "win_delegate.h"

@implementation WindowController

- (void) windowWillClose: (NSNotification *) notification
{
    [[NSNotificationCenter defaultCenter] postNotificationName: NSApplicationWillTerminateNotification object: NSApp];
}

@end
