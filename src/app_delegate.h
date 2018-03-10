#import <Cocoa/Cocoa.h>
#import "win_delegate.h"

@interface AppDelegate : NSObject <NSApplicationDelegate, NSWindowDelegate>
{
    WindowController *wincon;
    NSWindow *window;
}
@end
