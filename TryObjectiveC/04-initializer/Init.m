#include "Init.h"

@implementation Animal

- (id)init {
    if (self = [super init]) {
        name = @"Pochi";
    }

    printf("Call init\n");

    return self;
}

- (id)initWithName:(NSString *)name {
    self->name = name;
    return self;
}

@end
