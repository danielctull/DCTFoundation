//
//  NSMutableSet+DCTExtras.h
//  DCTConnectionKit
//
//  Created by Daniel Tull on 14/11/2010.
//  Copyright 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DCTBlock.h"

@interface NSMutableSet (DCTExtras)

- (void)dct_addBlock:(DCTBlock)block;

@end
