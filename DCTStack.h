/*
 DTStack.h
 DCTFoundation
 
 Created by Daniel Tull on 05.04.2009.
 
 
 
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

/** This represents a stack (last in, first out) data structure in computer science. It has the
 push and pop operations usually found in stacks, plus a few other methods
 to make it more useful.
 */
@interface DCTStack : NSObject

/// @name Standard stack operations

/** The number of items on the stack.
 
 @return The number of items on the stack.
 */
- (NSUInteger)count;

/** Pushes the given object onto the top of the stack.
 
 @param object The object to be pushed onto the stack.
 */
- (void)push:(id)object;

/** Removes the top object from the stack.
 
 @return The object that has just been popped off the top of the stack.
 */
- (id)pop;

/** Returns the top object without popping it from the stack.
 
 @return The top object on the stack.
 */
- (id)top;

/// @name Extra functionality


/** Returns an NSArray of all the objects in the stack.
 
 @return An array of all the objects in the stack.
 */
- (NSArray *)allObjects;

/** Pops the stack until it reaches the given object.
 
 @param object The object to pop to in the stack.
 @return An array of all objects that have been removed from the stack.
 */
- (NSArray *)popToObject:(id)object;

/** Pops the stack until it has only one item left.
 
 @return An array of all objects that have been removed from the stack.
 */
- (NSArray *)popToRootObject;

@end
