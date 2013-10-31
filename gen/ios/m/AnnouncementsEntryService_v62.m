/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

#import "AnnouncementsEntryService_v62.h"

/**
 * author Bruno Farache
 */
@implementation AnnouncementsEntryService_v62

- (NSDictionary *)addEntry:(long)plid classNameId:(long)classNameId classPK:(long)classPK title:(NSString *)title content:(NSString *)content url:(NSString *)url type:(NSString *)type displayDateMonth:(int)displayDateMonth displayDateDay:(int)displayDateDay displayDateYear:(int)displayDateYear displayDateHour:(int)displayDateHour displayDateMinute:(int)displayDateMinute displayImmediately:(BOOL)displayImmediately expirationDateMonth:(int)expirationDateMonth expirationDateDay:(int)expirationDateDay expirationDateYear:(int)expirationDateYear expirationDateHour:(int)expirationDateHour expirationDateMinute:(int)expirationDateMinute priority:(int)priority alert:(BOOL)alert {
	NSDictionary *_params = @{
		@"plid": @(plid),
		@"classNameId": @(classNameId),
		@"classPK": @(classPK),
		@"title": title,
		@"content": content,
		@"url": url,
		@"type": type,
		@"displayDateMonth": @(displayDateMonth),
		@"displayDateDay": @(displayDateDay),
		@"displayDateYear": @(displayDateYear),
		@"displayDateHour": @(displayDateHour),
		@"displayDateMinute": @(displayDateMinute),
		@"displayImmediately": @(displayImmediately),
		@"expirationDateMonth": @(expirationDateMonth),
		@"expirationDateDay": @(expirationDateDay),
		@"expirationDateYear": @(expirationDateYear),
		@"expirationDateHour": @(expirationDateHour),
		@"expirationDateMinute": @(expirationDateMinute),
		@"priority": @(priority),
		@"alert": @(alert)
	};

	NSDictionary *_command = @{@"/announcementsentry/add-entry": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSDictionary *)getEntry:(long)entryId {
	NSDictionary *_params = @{
		@"entryId": @(entryId)
	};

	NSDictionary *_command = @{@"/announcementsentry/get-entry": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSDictionary *)updateEntry:(long)entryId title:(NSString *)title content:(NSString *)content url:(NSString *)url type:(NSString *)type displayDateMonth:(int)displayDateMonth displayDateDay:(int)displayDateDay displayDateYear:(int)displayDateYear displayDateHour:(int)displayDateHour displayDateMinute:(int)displayDateMinute expirationDateMonth:(int)expirationDateMonth expirationDateDay:(int)expirationDateDay expirationDateYear:(int)expirationDateYear expirationDateHour:(int)expirationDateHour expirationDateMinute:(int)expirationDateMinute priority:(int)priority {
	NSDictionary *_params = @{
		@"entryId": @(entryId),
		@"title": title,
		@"content": content,
		@"url": url,
		@"type": type,
		@"displayDateMonth": @(displayDateMonth),
		@"displayDateDay": @(displayDateDay),
		@"displayDateYear": @(displayDateYear),
		@"displayDateHour": @(displayDateHour),
		@"displayDateMinute": @(displayDateMinute),
		@"expirationDateMonth": @(expirationDateMonth),
		@"expirationDateDay": @(expirationDateDay),
		@"expirationDateYear": @(expirationDateYear),
		@"expirationDateHour": @(expirationDateHour),
		@"expirationDateMinute": @(expirationDateMinute),
		@"priority": @(priority)
	};

	NSDictionary *_command = @{@"/announcementsentry/update-entry": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (void)deleteEntry:(long)entryId {
	NSDictionary *_params = @{
		@"entryId": @(entryId)
	};

	NSDictionary *_command = @{@"/announcementsentry/delete-entry": _params};

	[self.session invoke:_command];
}

@end