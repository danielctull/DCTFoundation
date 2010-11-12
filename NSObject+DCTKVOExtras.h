//
//  NSObject+DCTKVOExtras.h
//  DCTFoundation
//
//  Created by Daniel Tull on 09/11/2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^DCTKeyValueChange) ();

@interface NSObject (DCTKVOExtras)

- (void)dct_changeValueForKey:(NSString *)key withChange:(DCTKeyValueChange)change;
- (void)dct_changeValueForKeys:(NSArray *)keys withChange:(DCTKeyValueChange)change;

@end
