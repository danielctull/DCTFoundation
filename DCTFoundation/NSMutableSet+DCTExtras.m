//
//  NSMutableSet+DCTExtras.m
//  DCTConnectionKit
//
//  Created by Daniel Tull on 14/11/2010.
//  Copyright 2010 Daniel Tull. All rights reserved.
//

#import "NSMutableSet+DCTExtras.h"


@implementation NSMutableSet (DCTExtras)

- (void)dct_addBlock:(DCTBlock)block {
	id blockcopy = [block copy];
	[self addObject:blockcopy];
	[blockcopy release];
}

@end
