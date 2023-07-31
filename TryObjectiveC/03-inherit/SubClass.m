#import "SubClass.h"

@implementation SuperClass

- (void)methodA {
    printf("Call SuperClass.methodA\n");
}

@end


@implementation SubClass

- (void)methodA {
    printf("Call SubClass.methodA %d\n", x);
    [super methodA];
}

- (void)methodB {
    printf("Call SubClass.methodB\n");
}

@end

void callMethod(id obj) {
    // `[]` はメッセージ式と呼ばれる
    // メッセージ式によってオブジェクトにメッセージが送信されると、オブジェクトは与えられたメッセージに従って
    // 適切なメソッドを実行しようとする
    // 動的な仕組みとしては柔軟性があるが、C言語に比べて関数呼び出しのオーバーヘッドがある
    [obj methodA];
}
