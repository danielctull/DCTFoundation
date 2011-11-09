//
//  NSJSONSerialization+DCTBlocks.h
//  Issues
//
//  Created by Daniel Tull on 19.08.2011.
//  Copyright (c) 2011 Daniel Tull. All rights reserved.
//

#import "DCTFoundation.h"

@interface NSJSONSerialization (DCTBlocks)

+ (void)dct_parseData:(NSData *)data completionHandler:(void (^)(id JSONObject))completionHandler;
+ (void)dct_parseData:(NSData *)data completionHandler:(void (^)(id JSONObject))completionHandler errorHandler:(void (^)(NSError *error))errorHandler;

@end
