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

#import "LRBookmarksFolderService_v62.h"

/**
 * author Bruno Farache
 */
@implementation LRBookmarksFolderService_v62

- (NSDictionary *)addFolderWithParentFolderId:(long)parentFolderId name:(NSString *)name description:(NSString *)description serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"parentFolderId": @(parentFolderId),
		@"name": name,
		@"description": description,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/bookmarksfolder/add-folder": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (void)deleteFolderWithFolderId:(long)folderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"folderId": @(folderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/delete-folder": _params};

	[self.session invoke:_command error:error];
}

- (void)deleteFolderWithFolderId:(long)folderId includeTrashedEntries:(BOOL)includeTrashedEntries error:(NSError **)error {
	NSDictionary *_params = @{
		@"folderId": @(folderId),
		@"includeTrashedEntries": @(includeTrashedEntries)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/delete-folder": _params};

	[self.session invoke:_command error:error];
}

- (NSDictionary *)getFolderWithFolderId:(long)folderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"folderId": @(folderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-folder": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSArray *)getFolderIdsWithGroupId:(long)groupId folderId:(long)folderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"folderId": @(folderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-folder-ids": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getFoldersWithGroupId:(long)groupId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-folders": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getFoldersWithGroupId:(long)groupId parentFolderId:(long)parentFolderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"parentFolderId": @(parentFolderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-folders": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getFoldersWithGroupId:(long)groupId parentFolderId:(long)parentFolderId start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"parentFolderId": @(parentFolderId),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-folders": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getFoldersWithGroupId:(long)groupId parentFolderId:(long)parentFolderId status:(int)status start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"parentFolderId": @(parentFolderId),
		@"status": @(status),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-folders": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getFoldersAndEntriesWithGroupId:(long)groupId folderId:(long)folderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"folderId": @(folderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-folders-and-entries": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getFoldersAndEntriesWithGroupId:(long)groupId folderId:(long)folderId status:(int)status error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"folderId": @(folderId),
		@"status": @(status)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-folders-and-entries": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getFoldersAndEntriesWithGroupId:(long)groupId folderId:(long)folderId status:(int)status start:(int)start end:(int)end error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"folderId": @(folderId),
		@"status": @(status),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-folders-and-entries": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (int)getFoldersAndEntriesCountWithGroupId:(long)groupId folderId:(long)folderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"folderId": @(folderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-folders-and-entries-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (int)getFoldersAndEntriesCountWithGroupId:(long)groupId folderId:(long)folderId status:(int)status error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"folderId": @(folderId),
		@"status": @(status)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-folders-and-entries-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (int)getFoldersCountWithGroupId:(long)groupId parentFolderId:(long)parentFolderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"parentFolderId": @(parentFolderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-folders-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (int)getFoldersCountWithGroupId:(long)groupId parentFolderId:(long)parentFolderId status:(int)status error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"parentFolderId": @(parentFolderId),
		@"status": @(status)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-folders-count": _params};

	return (int)[self.session invoke:_command error:error];
}

- (void)getSubfolderIdsWithFolderIds:(NSArray *)folderIds groupId:(long)groupId folderId:(long)folderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"folderIds": folderIds,
		@"groupId": @(groupId),
		@"folderId": @(folderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-subfolder-ids": _params};

	[self.session invoke:_command error:error];
}

- (NSArray *)getSubfolderIdsWithGroupId:(long)groupId folderId:(long)folderId recurse:(BOOL)recurse error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"folderId": @(folderId),
		@"recurse": @(recurse)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/get-subfolder-ids": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSDictionary *)moveFolderWithFolderId:(long)folderId parentFolderId:(long)parentFolderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"folderId": @(folderId),
		@"parentFolderId": @(parentFolderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/move-folder": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)moveFolderFromTrashWithFolderId:(long)folderId parentFolderId:(long)parentFolderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"folderId": @(folderId),
		@"parentFolderId": @(parentFolderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/move-folder-from-trash": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)moveFolderToTrashWithFolderId:(long)folderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"folderId": @(folderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/move-folder-to-trash": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (void)restoreFolderFromTrashWithFolderId:(long)folderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"folderId": @(folderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/restore-folder-from-trash": _params};

	[self.session invoke:_command error:error];
}

- (void)subscribeFolderWithGroupId:(long)groupId folderId:(long)folderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"folderId": @(folderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/subscribe-folder": _params};

	[self.session invoke:_command error:error];
}

- (void)unsubscribeFolderWithGroupId:(long)groupId folderId:(long)folderId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"folderId": @(folderId)
	};

	NSDictionary *_command = @{@"/bookmarksfolder/unsubscribe-folder": _params};

	[self.session invoke:_command error:error];
}

- (NSDictionary *)updateFolderWithFolderId:(long)folderId parentFolderId:(long)parentFolderId name:(NSString *)name description:(NSString *)description mergeWithParentFolder:(BOOL)mergeWithParentFolder serviceContext:(NSDictionary *)serviceContext error:(NSError **)error {
	NSDictionary *_params = @{
		@"folderId": @(folderId),
		@"parentFolderId": @(parentFolderId),
		@"name": name,
		@"description": description,
		@"mergeWithParentFolder": @(mergeWithParentFolder),
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/bookmarksfolder/update-folder": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

@end