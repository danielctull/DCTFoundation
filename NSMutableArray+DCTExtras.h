//
//  NSMutableArray+DCTExtras.h
//  DCTDropboxKit
//
//  Created by Daniel Tull on 27.11.2010.
//  Copyright 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>

/** Addtions to the NSMutableArray class.
 */
@interface NSMutableArray (DCTExtras)

/** Adds the objects from the given array if they aren't already in the receiver.
 
 @param array Array of objects to add.
 */
- (void)dct_addObjectsFromArrayIfNew:(NSArray *)array;

/** Adds the given object if it isn't already in the receiver.
 
 @param object The object to add.
 */
- (void)dct_addObjectIfNew:(id)object;

@end
