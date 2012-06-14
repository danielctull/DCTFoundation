//
//  NSJSONSerialization+DCTBlocks.m
//  Issues
//
//  Created by Daniel Tull on 19.08.2011.
//  Copyright (c) 2011 Daniel Tull. All rights reserved.
//

#import "NSJSONSerialization+DCTBlocks.h"

@implementation NSJSONSerialization (DCTBlocks)

+ (void)dct_parseData:(NSData *)data completionHandler:(void (^)(id JSONObject))completionHandler {
	[self dct_parseData:data completionHandler:completionHandler errorHandler:nil];
}

+ (void)dct_parseData:(NSData *)data completionHandler:(void (^)(id JSONObject))completionHandler errorHandler:(void (^)(NSError *error))errorHandler {
	
	dispatch_queue_t callingQueue = dispatch_get_current_queue();
		
	dispatch_queue_t asyncQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
	
	dispatch_async(asyncQueue, ^{
		NSError *error = nil;
		id object = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
		
		dispatch_async(callingQueue, ^() {
			
			if (object && completionHandler) 
				completionHandler(object);
			
			else if (errorHandler)
				errorHandler(error);		
			
		});		
	});
}

@end
