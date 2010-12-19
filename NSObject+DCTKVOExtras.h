/*
 NSError+DCTKVOExtras.h
 DCTFoundation
 
 Created by Daniel Tull on 9.11.2010.
 
 
 
 Copyright (c) 2010 Daniel Tull. All rights reserved.
 
 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:
 
 * Redistributions of source code must retain the above copyright notice, this
 list of conditions and the following disclaimer.
 
 * Redistributions in binary form must reproduce the above copyright notice,
 this list of conditions and the following disclaimer in the documentation
 and/or other materials provided with the distribution.
 
 * Neither the name of the author nor the names of its contributors may be used
 to endorse or promote products derived from this software without specific
 prior written permission.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import <Foundation/Foundation.h>

typedef void (^DCTKeyValueChange) ();

/** Helper methods to handle key-value coding calls.
 */
@interface NSObject (DCTKVOExtras)


/** Convenience method that calls willChangeValueForKey: and didChangeValueForKey: for the given key
 either side of the change block.
 
 DCTKeyValueChange is a block defined as:
 
 `typedef void (^DCTKeyValueChange) ();`
 
 @param key The key that is changed in the change block.
 @param change The change block that performs the change.
 */
- (void)dct_changeValueForKey:(NSString *)key withChange:(DCTKeyValueChange)change;

/** Convenience method that calls willChangeValueForKey: and didChangeValueForKey: for each key
 in the array of keys either side of the change block.
 
 DCTKeyValueChange is a block defined as:
 
 `typedef void (^DCTKeyValueChange) ();`
 
 @param keys An array of keys that are changed in the change block.
 @param change The change block that performs the change.
 */
- (void)dct_changeValueForKeys:(NSArray *)keys withChange:(DCTKeyValueChange)change;

@end
