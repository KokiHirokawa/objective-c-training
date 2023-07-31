#import <Foundation/Foundation.h>

// プロトコルの宣言
@protocol ClassNameToString
- (id)ToString;
@end

@interface ClassA : NSObject <ClassNameToString>
{
    NSString *name;
}

- (id)init;

@end

@interface ClassB : NSObject <ClassNameToString>
@end

@protocol MyProtocol1
@required
- (void)foo;
@optional
- (void)bar;
@optional
- (int)getInt;
@end

@protocol MyProtocol2
- (void)hoge;
@optional
- (void)piyo;
@end

@interface ConformProtocol1 : NSObject <MyProtocol1, MyProtocol2>
@end

@interface ConformProtocol2 : NSObject <MyProtocol1, MyProtocol2>
@end

@interface ConformProtocol3 : NSObject <MyProtocol1, MyProtocol2>
- (void)test;
@end

@interface Runner : NSObject
@property(nonatomic) id <MyProtocol1, MyProtocol2, NSObject> delegate;
- (void)run;
@end
