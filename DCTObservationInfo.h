//
//  DCTObservationInfo.h
//  DCTConnectionKit
//
//  Created by Daniel Tull on 09/11/2010.
//  Copyright (c) 2010 Daniel Tull. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DCTObservationInfo : NSObject {}

@property (nonatomic, assign) id object;
@property (nonatomic, assign) NSKeyValueObservingOptions options;
@property (nonatomic, copy) NSString *keyPath;
@property (nonatomic, assign) void *context;

@end


@interface NSSet (DCTObservationInfo)
- (NSSet *)dct_observationInfosWithObject:(id)object keyPath:(NSString *)keyPath;
@end