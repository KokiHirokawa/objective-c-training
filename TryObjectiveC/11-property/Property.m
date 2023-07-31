#import "Property.h"

@interface Property ()
// Class Extension でも宣言することができ、 private 変数を定義することに有効的
@property float value;
@end

@implementation Property

@synthesize age;
@synthesize height;
@synthesize money;
@synthesize name;

@end
