//
//  DCTFor.h
//  DCTFoundation
//
//  Created by Daniel Tull on 15.10.2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^DCTForItemisedWork)(id o);

@interface DCTFor : NSObject {

}

+ (void)first:(NSInteger)firstNItems in:(id)collection do:(DCTForItemisedWork)work;

@end
