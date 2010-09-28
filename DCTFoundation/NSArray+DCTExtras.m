/*
 NSArray+DTExtras.m
 DCTFoundation
 
 Created by Daniel Tull on 30.09.2009.
 
 
 
 Copyright (C) 2009 Daniel Tull. All rights reserved.
 
 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:
 
 * Redistributions of source code must retain the above copyright notice, this
 list of conditions and the following disclaimer.
 
 * Redistributions in binary form must reproduce the above copyright notice,
 this list of conditions and the following disclaimer in the documentation
 and/or other materials provided with the distribution.
 
 * Neither the name of the author nor the names of its contributors may be used
 to endorse or promote products derived from this software without specific
 prior written permission.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import "NSArray+DCTExtras.h"


@implementation NSArray (DCTExtras)

- (BOOL)dct_isEmpty {
	return ([self count] == 0);
}

- (id)dct_firstObject {
	if ([self dct_isEmpty])
		return nil;
	
	return [self objectAtIndex:0];
}

- (NSArray *)dct_subarrayWithObjectsOfClass:(Class)aClass {
	
	NSMutableArray *mArray = [[NSMutableArray alloc] init];
	
	for (id o in self)
		if ([o isKindOfClass:aClass])
			[mArray addObject:o];
	
	NSArray *subarray = [NSArray arrayWithArray:mArray];
	[mArray release];
	return subarray;
}

- (BOOL)dct_containsObjectOfClass:(Class)aClass {
	
	for (id o in self)
		if ([o isKindOfClass:aClass])
			return YES;
	
	return NO;
}

- (NSArray *)dct_splitArrayIntoArraysWithCount:(NSInteger)aCount {
	
	NSInteger c = [self count];
	
	NSMutableArray *splitArrays = [[NSMutableArray alloc] init];
	
	NSRange range = NSMakeRange(0, aCount);
	
	while (c > 0) {
		
		if (c < aCount) range.length = c;
		
		NSArray *splitArray = [self subarrayWithRange:range];
		[splitArrays addObject:splitArray];
		
		range.location += range.length;
		
		c = c - aCount;
	}
	
	NSArray *returnArray = [splitArrays copy];
	[splitArrays release];
	return [returnArray autorelease];
}

@end
