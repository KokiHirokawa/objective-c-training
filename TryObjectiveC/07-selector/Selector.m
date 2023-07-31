#import "Selector.h"

@implementation Selector

+ (void)callClassMethod {
    id obj = [[Selector alloc] init];

    // 指定したメソッドの有無は実行時に確認され、コンパイル時には評価されない
    // メッセージの送受信では、このセレクタがやり取りされている
    SEL sel = @selector(callInstanceMethod);

    // 存在しないメソッドを指定した場合は、クラッシュする
    // SEL sel = @selector(unknown);

    [obj performSelector:sel];
}

- (void)callInstanceMethod {
    printf("Hay, Yoda!\n");
}

@end
