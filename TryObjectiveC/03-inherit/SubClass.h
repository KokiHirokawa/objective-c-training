#import <Foundation/Foundation.h>

@interface SuperClass: NSObject
{
    int x;
}

- (void)methodA;
@end

@interface SubClass : SuperClass
- (void)methodB;
@end

void callMethod (id obj);
