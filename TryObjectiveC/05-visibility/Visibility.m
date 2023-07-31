#import "Visibility.h"

@implementation Parent

- (id)initWithA:(int)a b:(int)b c:(int)c {
    self->a = a;
    self->b = b;
    self->c = c;
    return self;
}

- (void)print {
    printf("a = %d, b = %d, c = %d\n", a, b, c);
}

@end

@implementation Child

- (void)print {
    [super print];

    a = 100;
    b = 500;
    printf("a = %d, b = %d\n", a, b);
}

@end
