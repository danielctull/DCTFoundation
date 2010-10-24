//
//  NSObject+DCTPerformSelector.h
//  Issues
//
//  Created by Daniel Tull on 4.10.2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (DCTPerformSelector)

- (id)dct_performSelector:(SEL)selector ifConformsToProtocol:(Protocol *)protocol;
- (id)dct_performSelector:(SEL)selector withObject:(id)object ifConformsToProtocol:(Protocol *)protocol;

- (id)dct_safePerformSelector:(SEL)selector;
- (id)dct_safePerformSelector:(SEL)selector withObject:(id)object;

@end
