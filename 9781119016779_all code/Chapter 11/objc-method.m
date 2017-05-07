#import <Foundation/Foundation.h>

@interface HelloWorld : NSObject
- (void)sayHello;
@end

@implementation HelloWorld

- (void)sayHello
{
    printf("Hello, world!\n");
}

@end

int main (int argc, char const *argv[])
{
    @autoreleasepool {
        HelloWorld *hello = [[HelloWorld alloc] init];
        [hello sayHello];
        [hello release];
    }
    return 0;
}
