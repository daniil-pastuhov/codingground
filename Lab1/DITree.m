#import "DITree.h"

@implementation DITree

    - (id) init
    {
        apples = [[NSMutableArray alloc] init];
        return self;
    }

    - (NSMutableArray *) getApples
    {
        return apples;
    }
    
    - (int) getNumber
    {
        return numberOfApples;
    }
    
    - (void) grow
    {
        int i;
        for (DIApple* apple in apples)
            [apple ripen];
        for (i = 0; i < 1 + random() % 5; i++)
            [apples addObject: [DIApple generate]];
    }
    
    - (NSMutableArray *) shake
    {
        int i = 0;
        while([[apples objectAtIndex: i] getAppleType] == RIPE)
            ++i;
        NSRange range;
        range.length = i;
        range.location = 0;
        NSMutableArray *ret = (NSMutableArray *)[apples subarrayWithRange: range];
        [apples removeObjectsInRange: range];
        return ret;
    }

    - (void) release
    {
        [apples release];
    }

@end