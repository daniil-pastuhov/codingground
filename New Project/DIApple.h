#import <Foundation/Foundation.h>

enum DIAppleType {UNRIPE, RIPE};

@interface DIApple : NSObject
{
	enum DIAppleType type;
	int numberOfSeeds;
}

+ (DIApple *) generate;
- (NSString *) toString;
- (int) getAppleType;
- (void) ripen;

@end