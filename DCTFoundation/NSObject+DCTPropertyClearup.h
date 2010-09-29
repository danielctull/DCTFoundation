//
//  NSObject+DCTPropertyClearup.h
//  DCTFoundation
//
//  Created by Daniel Tull on 26.09.2010.
//  Copyright 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (DCTPropertyClearup)

- (void)dct_deallocProperties;
+ (void)dct_registerForPropertyClearup;

@end
