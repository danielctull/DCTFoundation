//
//  TestClass.h
//  DCTFoundation
//
//  Created by Daniel Tull on 28.09.2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TestClass : NSObject {
	NSString *string;
	NSObject *object;
	BOOL ok;
}

@property (nonatomic, retain) NSString *string;
@property (nonatomic, retain) NSObject *object;
@property (nonatomic, assign) BOOL ok;


@end
