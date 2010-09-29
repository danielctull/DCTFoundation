//
//  TestSubclass.h
//  DCTFoundation
//
//  Created by Daniel Tull on 28.09.2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import "TestClass.h"


@interface TestSubclass : TestClass {
	NSNumber *number;
}

@property (nonatomic, retain) NSNumber *number;

@end
