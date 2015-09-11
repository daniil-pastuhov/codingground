#import <Foundation/Foundation.h>
#import "DIApple.h"

@interface DITree : NSObject
{
	NSMutableArray *apples;
	int numberOfApples;
}

- (NSMutableArray *) getApples;
- (int) getNumber;
- (void) grow;
- (NSMutableArray *) shake;

@end