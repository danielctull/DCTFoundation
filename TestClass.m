//
//  TestClass.m
//  DCTFoundation
//
//  Created by Daniel Tull on 28.09.2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import "TestClass.h"
#import "NSObject+DCTPropertyClearup.h"

@implementation TestClass
@synthesize object, string, ok;

+ (void)load {
	[self dct_registerForPropertyClearup];
	NSLog(@"%@:%@", self, NSStringFromSelector(_cmd));
}

- (void)dealloc {
	NSLog(@"%@:%@ %@", self, NSStringFromSelector(_cmd), NSStringFromClass([self class]));
	[self dct_deallocProperties];
	[super dealloc];
}

@end
