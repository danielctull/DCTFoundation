//
//  NSError+DCTExtensions.h
//  Issues
//
//  Created by Daniel Tull on 24.10.2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSError (DCTExtensions)

+ (id)dct_errorWithDomain:(NSString *)domain
					 code:(NSInteger)code
	 localizedDescription:(NSString *)localizedDescription 
   localizedFailureReason:(NSString *)localizedFailureReason
 localizedRecoveryOptions:(NSArray *)localizedRecoveryOptions
localizedRecoverySuggestion:(NSString *)localizedRecoverySuggestion;

+ (id)dct_errorWithDomain:(NSString *)domain
					 code:(NSInteger)code
	 localizedDescription:(NSString *)localizedDescription;

@end
