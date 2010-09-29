//
//  main.m
//  DCTFoundation
//
//  Created by Daniel Tull on 26.09.2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestSubclass.h"

int main (int argc, const char * argv[]) {
	
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	// insert code here...
	NSLog(@"Hello, World!");
	
	TestSubclass *tc = [[TestSubclass alloc] init];
	tc.string = @"this is a string";
	tc.object = [NSNumber numberWithInt:1];
	tc.ok = YES;
	tc.number = [NSNumber numberWithInt:2];
	[tc release];
	
	
	
	[pool drain];
    return 0;
}

