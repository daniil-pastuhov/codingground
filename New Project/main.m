#import <Foundation/Foundation.h>
#import "DIApple.h"
#import "DITree.h"
#import <time.h>

void printApples(NSMutableArray *apples)
{
    for(DIApple* apple in apples)
        NSLog([apple toString]);
    NSLog(@"--------------------");
}

int main (int argc, const char * argv[])
{
    NSAutoreleasePool *myPool = [[NSAutoreleasePool alloc] init];
    srand(time(NULL));
    DITree *tree = [[DITree alloc] init];
    NSMutableArray *apples = [tree getApples];
    [tree grow];
    NSLog(@"\nGrowing..\n");
    printApples(apples);
    [tree grow];
    [tree grow];
    NSLog(@"\nGrowing.. twice\n");   
    printApples(apples);
    apples = [tree shake];
    NSLog(@"\nShaked apples:");
    printApples(apples);
    NSLog(@"\nRemaning apples after shaking:");
    apples = [tree getApples];
    printApples(apples);
    [tree release];
    [myPool drain];
    return 0;
}