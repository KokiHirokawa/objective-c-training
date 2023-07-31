#import <Foundation/Foundation.h>

// @classで特定のクラスの存在をコンパイラに教えることができる
// `AttributesClassBaz.h`の読み込み先に`AttributesClassBar`を見せたくない場合などに有効
//
//　#import "AttributesClassFoo.h"

@class AttributesClassFoo;
@interface AttributesClassBaz : NSObject {
}
@property AttributesClassFoo *someFoo;
@end
