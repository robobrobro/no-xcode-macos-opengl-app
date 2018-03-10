#import "view.h"

#include <OpenGL/gl.h>

@implementation View

static void draw()
{
    glColor3f(1, 0.85f, 0.35f);
    glBegin(GL_TRIANGLES);
    {
        glVertex2f(0, 0.6);
        glVertex2f(-0.2, -0.3);
        glVertex2f(0.2, -0.3);
    }
    glEnd();
}

- (void) drawRect: (NSRect) bounds
{
    glClearColor(0, 0, 0, 0);
    glClear(GL_COLOR_BUFFER_BIT);
    draw();
    glFlush();
}

- (void) mouseDown: (NSEvent *) event
{
    NSLog(@"button %ld pressed", [event buttonNumber]);
    if ([event buttonNumber] == 0) {
        [NSApp terminate: nil];
    }
}

@end
