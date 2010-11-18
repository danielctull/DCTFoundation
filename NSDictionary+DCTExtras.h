//
//  NSDictionary+DCTExtras.h
//  DCTFoundation
//
//  Created by Daniel Tull on 18/11/2010.
//  Copyright 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDictionary (DCTExtras)
+ (id)dct_dictionaryWithKeysAndObjects:(id)firstKey, ...;
- (NSArray *)dct_keysForObject:(id)object;
@end
