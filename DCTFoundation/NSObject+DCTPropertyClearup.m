//
//  NSObject+DCTPropertyClearup.m
//  DCTFoundation
//
//  Created by Daniel Tull on 26.09.2010.
//  Copyright 2010 Daniel Tull. All rights reserved.
//

#import "NSObject+DCTPropertyClearup.h"
#import <objc/runtime.h>

@interface NSObject ()
- (NSString *)dctInternal_ivarNameForProperty:(objc_property_t)property;
- (NSArray *)dctInternal_propertyAttributesFromProperty:(objc_property_t)property;
- (NSString *)dctInternal_nameOfProperty:(objc_property_t)property;

@end

@implementation NSObject (DCTPropertyClearup)

- (void)dct_deallocProperties {
	
	NSUInteger outCount;
	
	objc_property_t *properties = class_copyPropertyList([self class], &outCount);
	
	for (NSUInteger i = 0; i < outCount; i++) {
		objc_property_t property = properties[i];
		
		
		
	}
	
	free(properties);
	
}

- (NSString *)dctInternal_ivarNameForProperty:(objc_property_t)property {
	
	NSArray *attributes = [self dctInternal_propertyAttributesFromProperty:property];
	
	NSString *ivarName = nil;
	
	for (NSString *attribute in attributes) {
		
		if ([attribute hasPrefix:@"V"]) {
			
			if ([attribute hasPrefix:@"V_"])
				ivarName = [attribute substringFromIndex:2];
			else
				ivarName = [attribute substringFromIndex:1];
		}
	}
	
	if (!ivarName) 
		ivarName = [self dctInternal_nameOfProperty:property];
	
	return ivarName;
}

- (NSArray *)dctInternal_propertyAttributesFromProperty:(objc_property_t)property {
	const char *propertyAttributes = property_getAttributes(property);
	
	NSString *attributeString = [[NSString alloc] initWithCString:propertyAttributes];
	
	NSArray *attributes = [attributeString componentsSeparatedByString:@","];
	
	[attributeString release];
	
	return attributes;
}

- (NSString *)dctInternal_nameOfProperty:(objc_property_t)property {
	const char *propertyName = property_getName(property);
	
	return [[[NSString alloc] initWithCString:propertyName] autorelease];
}

@end
