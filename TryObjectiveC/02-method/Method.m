#import "Method.h"

@implementation MyPoint
- (void)setPoint:(int)x :(int)y {
    self->x = x;
    self->y = y;
}

- (void)setPoint:(int)x y:(int)pty {
    self->x = x;
    y = pty;
}

- (int)getX {
    return x;
}

- (int)getY {
    return y;
}
@end
