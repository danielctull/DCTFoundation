//
//  NSMutableArray+DCTExtras.h
//  DCTDropboxKit
//
//  Created by Daniel Tull on 27.11.2010.
//  Copyright 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSMutableArray (DCTExtras)

- (void)dct_addObjectsFromArrayIfNew:(NSArray *)array;
- (void)dct_addObjectIfNew:(id)object;

@end
