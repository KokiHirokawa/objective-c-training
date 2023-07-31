#include <Foundation/Foundation.h>

@interface Animal : NSObject  {
    NSString *name;
}

// Objective-C にはコンストラクタが存在しない
// NSObject の初期化用メソッドである init をオーバーライドすることで、初期化を行う
- (id)init;

// init では引数を受け取ることができないため、代わりに指定イニシャライザを設ける必要がある
// 同じくコンストラクタではないため明示的に呼び出す必要がある
- (id)initWithName:(NSString*)name;
@end
