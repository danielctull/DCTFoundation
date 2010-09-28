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

#import "NSDate+DCTDateComponents.h"


@implementation NSDate (DCTDateComponents)

- (NSDateComponents *)dct_gregorianCalendarComponents {
	NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSDateComponents *components = [gregorian components:(NSSecondCalendarUnit | NSMinuteCalendarUnit | NSHourCalendarUnit | NSDayCalendarUnit | NSWeekdayCalendarUnit | NSWeekdayOrdinalCalendarUnit | NSWeekCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit | NSEraCalendarUnit) fromDate:self];
	[gregorian release];
	return components;
}

- (NSInteger)dct_second {
	return [[self dct_gregorianCalendarComponents] second];
}

- (NSInteger)dct_minute {
	return [[self dct_gregorianCalendarComponents] minute];
}

- (NSInteger)dct_hour {
	return [[self dct_gregorianCalendarComponents] hour];
}

- (NSInteger)dct_day {
	return [[self dct_gregorianCalendarComponents] day];
}

- (NSInteger)dct_weekday {
	return [[self dct_gregorianCalendarComponents] weekday];
}

- (NSInteger)dct_weekdayOrdinal {
	return [[self dct_gregorianCalendarComponents] weekdayOrdinal];
}

- (NSInteger)dct_week {
	return [[self dct_gregorianCalendarComponents] week];
}

- (NSInteger)dct_month {
	return [[self dct_gregorianCalendarComponents] month];
}

- (NSInteger)dct_year {
	return [[self dct_gregorianCalendarComponents] year];
}

- (NSInteger)dct_era {
	return [[self dct_gregorianCalendarComponents] era];
}

#pragma mark -
#pragma mark Date Creation

+ (NSDate *)dct_dateWithYear:(NSInteger)year {
	return [self dct_dateWithYear:year month:0 day:0 hour:0 minute:0 second:0];
}

+ (NSDate *)dct_dateWithYear:(NSInteger)year month:(NSInteger)month {
	return [self dct_dateWithYear:year month:month day:0 hour:0 minute:0 second:0];
}

+ (NSDate *)dct_dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day {
	return [self dct_dateWithYear:year month:month day:day hour:0 minute:0 second:0];
}

+ (NSDate *)dct_dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour {
	return [self dct_dateWithYear:year month:month day:day hour:hour minute:0 second:0];
}

+ (NSDate *)dct_dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day hour:(NSInteger)hour minute:(NSInteger)minute {
	return [self dct_dateWithYear:year month:month day:day hour:hour minute:minute second:0];
}

+ (NSDate *)dct_dateWithYear:(NSInteger)year
					   month:(NSInteger)month
						 day:(NSInteger)day
						hour:(NSInteger)hour
					  minute:(NSInteger)minute
					  second:(NSInteger)second {
	
	NSDateComponents *comps = [[NSDateComponents alloc] init];
	[comps setYear:year];
	[comps setMonth:month];
	[comps setDay:day];
	[comps setHour:hour];
	[comps setMinute:minute];
	[comps setSecond:second];
	NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSDate *date = [gregorian dateFromComponents:comps];
	[comps release];
	[gregorian release];
	return date;
}

@end
