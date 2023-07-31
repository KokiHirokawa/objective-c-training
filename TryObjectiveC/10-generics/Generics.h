#import <Foundation/Foundation.h>

// Lightweight Generics
@interface Queue<ObjectType> : NSObject
- (void)enqueue:(ObjectType)value;
- (ObjectType)dequeue;
@end
