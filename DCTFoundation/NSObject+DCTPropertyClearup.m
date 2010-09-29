//
//  NSObject+DCTPropertyClearup.m
//  DCTFoundation
//
//  Created by Daniel Tull on 26.09.2010.
//  Copyright 2010 Daniel Tull. All rights reserved.
//

#import "NSObject+DCTPropertyClearup.h"
#import <objc/runtime.h>

NSString *const DCTPropertyClearupDoneVariableName = @"DCTPropertyClearupDoneVariable";

@interface NSObject ()
- (BOOL)dctInternal_propertyIsRetainOrCopy:(objc_property_t)property;
- (NSString *)dctInternal_ivarNameForProperty:(objc_property_t)property;
- (NSArray *)dctInternal_propertyAttributesFromProperty:(objc_property_t)property;
- (NSString *)dctInternal_nameOfProperty:(objc_property_t)property;

@end

@implementation NSObject (DCTPropertyClearup)

+ (void)dct_registerForPropertyClearup {
	
	NSMutableArray *array = objc_getAssociatedObject(DCTPropertyClearupDoneVariableName, DCTPropertyClearupDoneVariableName);
	
	if (!array) {
		array = [[[NSMutableArray alloc] init] autorelease];
		objc_setAssociatedObject(DCTPropertyClearupDoneVariableName, DCTPropertyClearupDoneVariableName, array, OBJC_ASSOCIATION_ASSIGN);
	}
	
	[array addObject:NSStringFromClass(self)];	
}

- (void)dct_deallocProperties {
	
	NSMutableArray *array = objc_getAssociatedObject(DCTPropertyClearupDoneVariableName, DCTPropertyClearupDoneVariableName);
	
	NSLog(@"%@:%@ %@", self, NSStringFromSelector(_cmd), array);
	
	
	if (objc_getAssociatedObject(self, DCTPropertyClearupDoneVariableName)) return;
	
	NSUInteger outCount;
	
	objc_property_t *properties = class_copyPropertyList(object_getClass(self), &outCount);
	
	for (NSUInteger i = 0; i < outCount; i++) {
		objc_property_t property = properties[i];
		
		if ([self dctInternal_propertyIsRetainOrCopy:property]) {
			
			NSString *vName = [self dctInternal_ivarNameForProperty:property];
			
			id variable;
			Ivar ivar = object_getInstanceVariable(self, [vName cStringUsingEncoding:NSUTF8StringEncoding], (void **)&variable);
			
			NSLog(@"%@: %@ = %@", NSStringFromSelector(_cmd), vName, variable);
			
			[variable release];
			
			object_setIvar(self, ivar, nil);
		}
	}
	
	objc_setAssociatedObject(self, DCTPropertyClearupDoneVariableName, DCTPropertyClearupDoneVariableName, OBJC_ASSOCIATION_ASSIGN);
	
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

- (BOOL)dctInternal_propertyIsRetainOrCopy:(objc_property_t)property {
	
	NSArray *attributes = [self dctInternal_propertyAttributesFromProperty:property];
	
	for (NSString *attribute in attributes)
		if ([attribute isEqualToString:@"C"] || [attribute isEqualToString:@"&"])
			return YES;
	
	return NO;
}

- (NSArray *)dctInternal_propertyAttributesFromProperty:(objc_property_t)property {
	const char *propertyAttributes = property_getAttributes(property);
	
	NSString *attributeString = [[NSString alloc] initWithCString:propertyAttributes];
	
	NSArray *attributes = [attributeString componentsSeparatedByString:@","];
	
	[attributeString release];
	
	//NSLog(@"%@ %@", NSStringFromSelector(_cmd), attributes);
	
	return attributes;
}

- (NSString *)dctInternal_nameOfProperty:(objc_property_t)property {
	const char *propertyName = property_getName(property);
	
	return [[[NSString alloc] initWithCString:propertyName] autorelease];
}

@end
