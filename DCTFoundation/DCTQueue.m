/*
 DCTQueue.m
 DCTFoundation
 
 Created by Daniel Tull on 05.04.2009.
 
 
 
 Copyright (c) 2009 Daniel Tull. All rights reserved.
 
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

#import "DCTQueue.h"


@implementation DCTQueue

- (id)init {
	
	if (!(self = [super init])) return nil;
	
	queue = [[NSMutableArray alloc] init];
	
	return self;
}

- (void)dealloc {
	[queue release];
	[super dealloc];
}

- (NSUInteger)count {
	return [queue count];
}

- (void)enqueue:(id)object {
	[queue addObject:object];
}

- (void)push:(id)object {
	[self enqueue:object];
}

- (id)dequeue {
	id object = [[queue objectAtIndex:0] retain];
	[queue removeObjectAtIndex:0];
	return [object autorelease];
}

- (id)pop {
	return [self dequeue];
}

- (id)front {
	return [[[queue objectAtIndex:0] retain] autorelease];
}

@end
