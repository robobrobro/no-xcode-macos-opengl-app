#import "app.h"
#import "app_delegate.h"

int main(int argc, const char **argv)
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSApplication *app = [Application sharedApplication];
    AppDelegate *del = [[[AppDelegate alloc] init] autorelease];

    [app setDelegate: del];
    [app setActivationPolicy: NSApplicationActivationPolicyRegular];
    [app activateIgnoringOtherApps: YES];

    if ([app respondsToSelector: @selector(run)]) {
        [app performSelectorOnMainThread: @selector(run) withObject: nil waitUntilDone: YES];
    }
    
    [pool drain];

    return EXIT_SUCCESS;
}
