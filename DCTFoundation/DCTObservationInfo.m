//
//  DCTObservationInfo.m
//  DCTConnectionKit
//
//  Created by Daniel Tull on 09/11/2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import "DCTObservationInfo.h"


@implementation DCTObservationInfo

@synthesize object, options, keyPath, context;

- (void)dealloc {
	[keyPath release], keyPath = nil;
    [super dealloc];
}

@end

@implementation NSSet (DCTObservationInfo)

- (NSSet *)dct_observationInfosWithObject:(id)object keyPath:(NSString *)keyPath {

	return [self objectsPassingTest:^(id obj, BOOL *stop){
		
		if (![obj isKindOfClass:[DCTObservationInfo class]]) return NO;
		
		DCTObservationInfo *info = (DCTObservationInfo *)obj;
		
		if (![info.keyPath isEqualToString:keyPath]) return NO;
		if (![info.object isEqual:object]) return NO;
		
		return YES;
	}];
}

@end