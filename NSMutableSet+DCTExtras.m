//
//  NSMutableSet+DCTExtras.m
//  DCTFoundation
//
//  Created by Daniel Tull on 14/11/2010.
//  Copyright 2010 Daniel Tull. All rights reserved.
//

#import "NSMutableSet+DCTExtras.h"


@implementation NSMutableSet (DCTExtras)

- (void)dct_addBlock:(void (^)())block {
	[self addObject:[block copy]];
}

@end
