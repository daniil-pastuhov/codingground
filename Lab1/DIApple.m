#import "DIApple.h"

@implementation DIApple

	- (id) initWithSeeds: (int) seedsNum
	{
		type = UNRIPE;
		numberOfSeeds = seedsNum;
		return self;
	}

	+ (DIApple *) generate
	{
		return [[DIApple alloc]initWithSeeds: 4 + random() % 5];
	}
	
    - (NSString *) toString
    {
        NSString* res;
        switch(type)
        {
        case 0: 
            res = [NSString stringWithString:@"Unripe"];
            break;
        case 1: 
        default: res = [NSString stringWithString:@"Ripe"];
            break;
        }
        return [NSString stringWithFormat:@"%@ apple with %d seeds.", res, numberOfSeeds];
    }
	
	- (int) getAppleType
	{
	    return type;
	}
	
	- (void) ripen
	{
	    type = RIPE;
	}
	
@end