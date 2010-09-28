/*
 NSDate+DCTDateComponents.h
 DCTFoundation
 
 Created by Daniel Tull on 28.07.2009.
 
 
 
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


/** An extension to NSDate to have easier access to the individual components
 based on the gregorian calendar.
 */
@interface NSDate (DCTDateComponents)

/** @name Getting Gregorian date components
 @{
 */

- (NSDateComponents *)dct_gregorianCalendarComponents;

/**
 @}
 */

/** @name Getting individual components
 @{
 */

/** @brief The second component of the receiver.
 
 @return The second component of the receiver as an integer.
 */
- (NSInteger)dct_second;

/** @brief The minute component of the receiver.
 
 @return The minute component of the receiver as an integer.
 */
- (NSInteger)dct_minute;

/** @brief The hour component of the receiver.
 
 @return The hour component of the receiver as an integer.
 */
- (NSInteger)dct_hour;

/** @brief The day component of the receiver.
 
 @return The day component of the receiver as an integer.
 */
- (NSInteger)dct_day;

/** @brief The weekday component of the receiver.
 
 @return The weekday component of the receiver as an integer.
 */
- (NSInteger)dct_weekday;

/** @brief The weekdayOrdinal component of the receiver.
 
 @return The weekdayOrdinal component of the receiver as an integer.
 */
- (NSInteger)dct_weekdayOrdinal;

/** @brief The week component of the receiver.
 
 @return The week component of the receiver as an integer.
 */
- (NSInteger)dct_week;

/** @brief The month component of the receiver.
 
 @return The month component of the receiver as an integer.
 */
- (NSInteger)dct_month;

/** @brief The year component of the receiver.
 
 @return The year component of the receiver as an integer.
 */
- (NSInteger)dct_year;

/** @brief The era component of the receiver.
 
 @return The era component of the receiver as an integer.
 */
- (NSInteger)dct_era;

/**
 @}
 */

/** @name Creating a date
 @{
 */

/** @brief Creates a data with a year.
 
 @param year The year of the date.
 
 @return The newly created date.
 */
+ (NSDate *)dct_dateWithYear:(NSInteger)year;

/** @brief Creates a data with a year and month.
 
 @param year The year of the date.
 @param month The month of the date.
 
 @return The newly created date.
 */
+ (NSDate *)dct_dateWithYear:(NSInteger)year month:(NSInteger)month;

/** @brief Creates a data with a year, month and day.
 
 @param year The year of the date.
 @param month The month of the date.
 @param day The day of the date.
 
 @return The newly created date.
 */
+ (NSDate *)dct_dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;

/** @brief Creates a data with a year, month, day and hour.
 
 @param year The year of the date.
 @param month The month of the date.
 @param day The day of the date.
 @param hour The hour of the date.
 
 @return The newly created date.
 */
+ (NSDate *)dct_dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour;

/** @brief Creates a data with a year, month, day, hour and minute.
 
 @param year The year of the date.
 @param month The month of the date.
 @param day The day of the date.
 @param hour The hour of the date.
 @param minute The minute of the date.
 
 @return The newly created date.
 */
+ (NSDate *)dct_dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute;

/** @brief Creates a data with a year, month, day, hour, minute and second.
 
 @param year The year of the date.
 @param month The month of the date.
 @param day The day of the date.
 @param hour The hour of the date.
 @param minute The minute of the date.
 @param second The second of the date.
 
 @return The newly created date.
 */
+ (NSDate *)dct_dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute second:(NSInteger)second;

/**
 @}
 */

@end
