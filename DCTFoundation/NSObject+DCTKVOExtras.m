//
//  NSObject+DCTKVOExtras.m
//  DCTFoundation
//
//  Created by Daniel Tull on 09/11/2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import "NSObject+DCTKVOExtras.h"


@implementation NSObject (DCTKVOExtras)

- (void)dct_changeValueForKey:(NSString *)key withChange:(DCTKeyValueChange)change {
	[self willChangeValueForKey:key];
	change();
	[self didChangeValueForKey:key];
}

- (void)dct_changeValueForKeys:(NSArray *)keys withChange:(DCTKeyValueChange)change {
	for (NSString *key in keys) [self willChangeValueForKey:key];
	change();
	for (NSString *key in keys) [self didChangeValueForKey:key];
}

@end
