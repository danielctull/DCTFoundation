//
//  NSMutableArray+DCTExtras.m
//  DCTDropboxKit
//
//  Created by Daniel Tull on 27.11.2010.
//  Copyright 2010 Daniel Tull. All rights reserved.
//

#import "NSMutableArray+DCTExtras.h"


@implementation NSMutableArray (DCTExtras)

- (void)dct_addObjectsFromArrayIfNew:(NSArray *)array {
	for (id o in array)
		[self dct_addObjectIfNew:o];
}

- (void)dct_addObjectIfNew:(id)object {
	if ([self containsObject:object]) return;
	
	[self addObject:object];
}

@end
