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

#import "AssetEntryService_v62.h"

/**
 * author Bruno Farache
 */
@implementation AssetEntryService_v62

- (NSDictionary *)updateEntry:(long)groupId createDate:(long)createDate modifiedDate:(long)modifiedDate className:(NSString *)className classPK:(long)classPK classUuid:(NSString *)classUuid classTypeId:(long)classTypeId categoryIds:(NSArray *)categoryIds tagNames:(NSArray *)tagNames visible:(BOOL)visible startDate:(long)startDate endDate:(long)endDate expirationDate:(long)expirationDate mimeType:(NSString *)mimeType title:(NSString *)title description:(NSString *)description summary:(NSString *)summary url:(NSString *)url layoutUuid:(NSString *)layoutUuid height:(int)height width:(int)width priority:(NSDictionary *)priority sync:(BOOL)sync {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"createDate": @(createDate),
		@"modifiedDate": @(modifiedDate),
		@"className": className,
		@"classPK": @(classPK),
		@"classUuid": classUuid,
		@"classTypeId": @(classTypeId),
		@"categoryIds": categoryIds,
		@"tagNames": tagNames,
		@"visible": @(visible),
		@"startDate": @(startDate),
		@"endDate": @(endDate),
		@"expirationDate": @(expirationDate),
		@"mimeType": mimeType,
		@"title": title,
		@"description": description,
		@"summary": summary,
		@"url": url,
		@"layoutUuid": layoutUuid,
		@"height": @(height),
		@"width": @(width),
		@"priority": priority,
		@"sync": @(sync)
	};

	NSDictionary *_command = @{@"/assetentry/update-entry": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSArray *)getEntries:(NSDictionary *)entryQuery {
	NSDictionary *_params = @{
		@"entryQuery": entryQuery
	};

	NSDictionary *_command = @{@"/assetentry/get-entries": _params};

	return (NSArray *)[self.session invoke:_command];
}

- (NSArray *)getCompanyEntries:(long)companyId start:(int)start end:(int)end {
	NSDictionary *_params = @{
		@"companyId": @(companyId),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/assetentry/get-company-entries": _params};

	return (NSArray *)[self.session invoke:_command];
}

- (NSDictionary *)incrementViewCounter:(NSString *)className classPK:(long)classPK {
	NSDictionary *_params = @{
		@"className": className,
		@"classPK": @(classPK)
	};

	NSDictionary *_command = @{@"/assetentry/increment-view-counter": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (int)getEntriesCount:(NSDictionary *)entryQuery {
	NSDictionary *_params = @{
		@"entryQuery": entryQuery
	};

	NSDictionary *_command = @{@"/assetentry/get-entries-count": _params};

	return (int)[self.session invoke:_command];
}

- (int)getCompanyEntriesCount:(long)companyId {
	NSDictionary *_params = @{
		@"companyId": @(companyId)
	};

	NSDictionary *_command = @{@"/assetentry/get-company-entries-count": _params};

	return (int)[self.session invoke:_command];
}

- (NSDictionary *)getEntry:(long)entryId {
	NSDictionary *_params = @{
		@"entryId": @(entryId)
	};

	NSDictionary *_command = @{@"/assetentry/get-entry": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

@end