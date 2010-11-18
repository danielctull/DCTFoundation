//
//  NSDictionary+DCTExtras.m
//  DCTFoundation
//
//  Created by Daniel Tull on 18/11/2010.
//  Copyright 2010 Daniel Tull. All rights reserved.
//

#import "NSDictionary+DCTExtras.h"

@implementation NSDictionary (DCTExtras)

+ (id)dct_dictionaryWithKeysAndObjects:(id)firstKey, ... {
	
	NSMutableArray* keys = [[NSMutableArray alloc] initWithCapacity:1];
	NSMutableArray* values = [[NSMutableArray alloc] initWithCapacity:1];
	
	va_list args;
	va_start(args, firstKey);
	
	id key = firstKey;
	
	while ((key)) {
		
        [keys addObject:key];
		[values addObject:va_arg(args, id)];	
		
		key = va_arg(args, id);
	}
	
	va_end(args);
    
    id dict = [self dictionaryWithObjects:values forKeys:keys];
	
	[keys release];
	[values release];
	
	return dict;
}

- (NSArray *)dct_keysForObject:(id)object {
	
	if (![[self allValues] containsObject:object]) return nil;
	
	NSMutableArray *mArray = [[NSMutableArray alloc] init];
	
	for (id key in self)
		if ([[self objectForKey:key] isEqual:object])
			[mArray addObject:key];
	
	NSArray *returnArray = [NSArray arrayWithArray:mArray];
	[mArray release];
	return returnArray;
}

@end
