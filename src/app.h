#import <Cocoa/Cocoa.h>

@interface Application : NSApplication
{
    bool running;
}

- (void) run;
- (void) terminate: (id) sender;

@end
