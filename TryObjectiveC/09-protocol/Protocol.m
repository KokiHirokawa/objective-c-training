#import "Protocol.h"

@implementation ClassA

- (id)init {
    if (self = [super init]) {
        name = @"Unknown";
    }
    return self;
}

- (id)ToString {
    return name;
}

@end

@implementation ClassB

- (id)ToString {
    return @"New World";
}

@end

@implementation ConformProtocol1
- (void)foo {
    printf("%s\n", __PRETTY_FUNCTION__);
}
- (int)getInt {
    printf("%s\n", __PRETTY_FUNCTION__);
    return 10;
}
- (void)hoge {
    printf("%s\n", __PRETTY_FUNCTION__);
}
- (void)piyo {
    printf("%s\n", __PRETTY_FUNCTION__);
}
@end

@implementation ConformProtocol2
- (void)foo {
    printf("%s\n", __PRETTY_FUNCTION__);
}
- (void)bar {
    printf("%s\n", __PRETTY_FUNCTION__);
}
- (void)hoge {
    printf("%s\n", __PRETTY_FUNCTION__);
}
@end

@implementation ConformProtocol3
- (void)foo {
    printf("%s\n", __PRETTY_FUNCTION__);
}
- (void)hoge {
    printf("%s\n", __PRETTY_FUNCTION__);
}
- (void)test {

}
@end

@implementation Runner
@synthesize delegate = _delegate;
- (void)run {
    [_delegate foo];
    if ([_delegate respondsToSelector:@selector(bar)])
        [_delegate bar];
    if ([_delegate respondsToSelector:@selector(piyo)])
        [_delegate piyo];
}
@end
