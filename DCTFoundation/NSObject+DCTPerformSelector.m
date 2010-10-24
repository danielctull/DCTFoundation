//
//  NSObject+DCTPerformSelector.m
//  Issues
//
//  Created by Daniel Tull on 4.10.2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import "NSObject+DCTPerformSelector.h"

@implementation NSObject (DCTPerformSelector)

- (id)dct_performSelector:(SEL)selector ifConformsToProtocol:(Protocol *)protocol {
	
	if (![self conformsToProtocol:protocol]) return nil;
	
	if (![self respondsToSelector:selector]) return nil;
	
	return [self dct_safePerformSelector:selector];	
}

- (id)dct_performSelector:(SEL)selector withObject:(id)object ifConformsToProtocol:(Protocol *)protocol {
	
	if (![self conformsToProtocol:protocol]) return nil;
	
	if (![self respondsToSelector:selector]) return nil;
	
	return [self dct_safePerformSelector:selector withObject:object];	
}

- (id)dct_safePerformSelector:(SEL)selector {
	
	if (![self respondsToSelector:selector]) return nil;
	
	return [self performSelector:selector];	
}

- (id)dct_safePerformSelector:(SEL)selector withObject:(id)object {
	
	if (![self respondsToSelector:selector]) return nil;
	
	return [self performSelector:selector withObject:object];	
}



@end
