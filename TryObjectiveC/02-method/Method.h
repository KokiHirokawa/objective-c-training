#import <Foundation/NSObject.h>

@interface MyPoint: NSObject
{
    int x, y;
}

- (void)setPoint:(int)x :(int)y;

// ラベルの付与
- (void)setPoint:(int)x y:(int)pty;

// 第1引数にラベルは付与できない
//- (void)setPoint x:(int)ptx y:(int)pty;

- (int)getX;
- (int)getY;
@end
