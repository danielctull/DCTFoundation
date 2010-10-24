//
//  NSError+DCTExtensions.m
//  Issues
//
//  Created by Daniel Tull on 24.10.2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import "NSError+DCTExtensions.h"


@implementation NSError (DCTExtensions)

+ (id)dct_errorWithDomain:(NSString *)domain
					 code:(NSInteger)code
	 localizedDescription:(NSString *)localizedDescription 
   localizedFailureReason:(NSString *)localizedFailureReason
 localizedRecoveryOptions:(NSArray *)localizedRecoveryOptions
localizedRecoverySuggestion:(NSString *)localizedRecoverySuggestion {

	
	NSDictionary *userInfo = [NSMutableDictionary dictionary];
	
	if (localizedDescription) [userInfo setValue:localizedDescription forKey:NSLocalizedDescriptionKey];
	if (localizedFailureReason) [userInfo setValue:localizedFailureReason forKey:NSLocalizedFailureReasonErrorKey];
	if (localizedRecoveryOptions) [userInfo setValue:localizedRecoveryOptions forKey:NSLocalizedRecoveryOptionsErrorKey];
	if (localizedRecoverySuggestion) [userInfo setValue:localizedRecoverySuggestion forKey:NSLocalizedRecoverySuggestionErrorKey];
	
	
	return [self errorWithDomain:domain code:code userInfo:userInfo];	
}


+ (id)dct_errorWithDomain:(NSString *)domain
					 code:(NSInteger)code
	 localizedDescription:(NSString *)localizedDescription {
	
	return [self dct_errorWithDomain:domain 
								code:code
				localizedDescription:localizedDescription
			  localizedFailureReason:nil
			localizedRecoveryOptions:nil
		 localizedRecoverySuggestion:nil];	
}

@end
