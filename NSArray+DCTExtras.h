/*
 NSArray+DTExtras.h
 DCTFoundation
 
 Created by Daniel Tull on 30.09.2009.
 
 
 
 Copyright (C) 2009 Daniel Tull. All rights reserved.
 
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


@interface NSArray (DCTExtras)



/** Returns whether or not the receiving array is empty.
 
 @return A boolean indicating whether or not the receiving array is empty.
 */
- (BOOL)dct_isEmpty;



/** Returns the first object in the array or nil if the receiver is empty.
 
 @return The first object in the array or nil.
 */
- (id)dct_firstObject;



/** Returns an array containing only objects which are the kind of the given class.
 
 @param aClass The class to check objects for.
 @return Subarray containing only objects which are kind of the given class.
 */
- (NSArray *)dct_subarrayWithObjectsOfClass:(Class)aClass;



/** Looks in the receiver for an object of the given class and returns YES if one is found.
 
 @param aClass The class to check objects for.
 @return YES if receiver contains an object of the given class, NO otherwise.
 */
- (BOOL)dct_containsObjectOfClass:(Class)aClass;



/** Splits the receiver into sub-arrays of the given count.
 
 If the receiver has 12 objects, and you give a count of 5 you will be returned an array
 with 3 arrays inside, with counts of 5, 5 and 2. If you gave a count of 6, you would be 
 returned an array with 2 sub-arrays, both with a count of 6.

 @param aCount The maximum length each of the subarrays should be.
 @return An array of the sub-arrays.
 */
- (NSArray *)dct_splitArrayIntoArraysWithCount:(NSInteger)aCount;



/** Creates a sorted array of objects in the receiver, by putting the given key into a 
 sort descriptor array.
 
 @param key The key to sort each of the objects with.
 @param ascending Boolean to say whether the sorted array should be ascending or not (descending).
 @return Sorted array.
 */
- (NSArray *)dct_sortedArrayUsingKey:(NSString *)key ascending:(BOOL)ascending;

@end
