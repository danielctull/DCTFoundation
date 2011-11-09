//
//  NSMutableSet+DCTExtras.h
//  DCTFoundation
//
//  Created by Daniel Tull on 14/11/2010.
//  Copyright 2010 Daniel Tull. All rights reserved.
//

#import "DCTFoundation.h"

/// Extra methods for NSMutableSet.
@interface NSMutableSet (DCTExtras)


/** Block copies the given block before adding it.
 
 @param block The block to add.
 */
- (void)dct_addBlock:(void (^)())block;

@end
