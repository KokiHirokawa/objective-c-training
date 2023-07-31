#import <Foundation/Foundation.h>
#import "Category.h"

// カテゴリはSwiftのExtensionに似ていて、インスタンスメソッドとクラスメソッドの拡張ができる
@interface Category (Plus) {
    // カテゴリではインスタンス変数を宣言できない
    // int z;
}

- (int)getY;
- (void)setY:(int)y;

@end
