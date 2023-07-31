#import "Generics.h"

@interface Queue()
@property (nonatomic, strong) NSMutableArray<id> *array;
@end

@implementation Queue

- (instancetype)init {
    if (self = [super init]) {
        _array = [[NSMutableArray alloc] init];
    }
    return self;
}

// 実装時は Generics が id に置き換わる
- (void)enqueue:(id)value {
    [_array addObject:value];
}

- (id)dequeue {
    if (self.array.count > 0) {
        id value = _array[0];
        [_array removeObjectAtIndex:0];
        return value;
    }
    return nil;
}

@end
