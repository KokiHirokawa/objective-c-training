#include <Foundation/Foundation.h>

// @public: あらゆる場所から参照可能
// @protected: 変数を宣言したクラス + サブクラス
// @private: 変数を宣言したクラスのみ

@interface Parent : NSObject
{
@public
    int a;
@protected
    int b;
@private
    int c;
}

- (id)initWithA:(int)a b:(int)b c:(int)c;
- (void)print;
@end

@interface Child : Parent
@end
