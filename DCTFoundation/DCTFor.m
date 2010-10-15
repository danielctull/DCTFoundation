//
//  DCTFor.m
//  DCTFoundation
//
//  Created by Daniel Tull on 15.10.2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import "DCTFor.h"


@implementation DCTFor

+ (void)first:(NSInteger)firstNItems in:(id)collection do:(DCTForItemisedWork)work {
	
	NSInteger current = 0;
	
	for (id o in collection) {
		
		work(o);
		
		current++;
		if (current >= firstNItems) return;
	}
}

@end
