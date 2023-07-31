#import <Foundation/Foundation.h>

@interface Property : NSObject {
    int age;
    int height;
    int money;
    NSString *name;
}

@property (readonly) int age;
@property (readwrite) int height;

/// - (int)money;
/// - (void)setValue:(int)money;
@property int money;

@property (retain, setter=setCoolName:) NSString *name;

@end
