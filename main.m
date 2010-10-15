//
//  main.m
//  DCTFoundation
//
//  Created by Daniel Tull on 26.09.2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DCTFor.h"

int main (int argc, const char * argv[]) {

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	
	NSArray *array = [NSArray arrayWithObjects:@"One", @"Two", @"Three", @"Four", nil];
	
	[DCTFor first:3 in:array do:^(id o){
		
		NSLog(@"%@", o);
		
	}];
	
	[pool drain];
    return 0;
}

