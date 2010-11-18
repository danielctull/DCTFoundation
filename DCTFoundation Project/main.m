//
//  main.m
//  DCTFoundation
//
//  Created by Daniel Tull on 26.09.2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+DCTExtras.h"

int main (int argc, const char * argv[]) {

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	NSDictionary *dict = [NSDictionary dct_dictionaryWithKeysAndObjects:@"key1", @"value1",
																		@"key2", @"value2", nil];
	
	NSLog(@"%@", dict);
	
	[pool drain];
    return 0;
}

