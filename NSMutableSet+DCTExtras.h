//
//  NSMutableSet+DCTExtras.h
//  DCTFoundation
//
//  Created by Daniel Tull on 14/11/2010.
//  Copyright 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DCTBlock.h"

/// Extra methods for NSMutableSet.
@interface NSMutableSet (DCTExtras)


/** Block copies the given block before adding it.
 
 A DCTBlock is defined in `DCTBlock.h` as the following, so you can pass any block you wish into this method.
 
 `typedef void (^DCTBlock) ();`
 
 @param block The block to add.
 */
- (void)dct_addBlock:(DCTBlock)block;

@end
