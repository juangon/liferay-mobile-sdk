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

#import "WikiPageService_v62.h"

/**
 * author Bruno Farache
 */
@implementation WikiPageService_v62

- (NSDictionary *)updatePage:(long)nodeId title:(NSString *)title version:(double)version content:(NSString *)content summary:(NSString *)summary minorEdit:(BOOL)minorEdit format:(NSString *)format parentTitle:(NSString *)parentTitle redirectTitle:(NSString *)redirectTitle serviceContext:(NSDictionary *)serviceContext {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"version": @(version),
		@"content": content,
		@"summary": summary,
		@"minorEdit": @(minorEdit),
		@"format": format,
		@"parentTitle": parentTitle,
		@"redirectTitle": redirectTitle,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/wikipage/update-page": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (void)deleteTrashPageAttachments:(long)nodeId title:(NSString *)title {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title
	};

	NSDictionary *_command = @{@"/wikipage/delete-trash-page-attachments": _params};

	[self.session invoke:_command];
}

- (NSDictionary *)revertPage:(long)nodeId title:(NSString *)title version:(double)version serviceContext:(NSDictionary *)serviceContext {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"version": @(version),
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/wikipage/revert-page": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSArray *)getPages:(long)groupId nodeId:(long)nodeId head:(BOOL)head status:(int)status start:(int)start end:(int)end obc:(NSDictionary *)obc {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"nodeId": @(nodeId),
		@"head": @(head),
		@"status": @(status),
		@"start": @(start),
		@"end": @(end),
		@"obc": obc
	};

	NSDictionary *_command = @{@"/wikipage/get-pages": _params};

	return (NSArray *)[self.session invoke:_command];
}

- (NSArray *)getRecentChanges:(long)groupId nodeId:(long)nodeId start:(int)start end:(int)end {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"nodeId": @(nodeId),
		@"start": @(start),
		@"end": @(end)
	};

	NSDictionary *_command = @{@"/wikipage/get-recent-changes": _params};

	return (NSArray *)[self.session invoke:_command];
}

- (void)changeParent:(long)nodeId title:(NSString *)title newParentTitle:(NSString *)newParentTitle serviceContext:(NSDictionary *)serviceContext {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"newParentTitle": newParentTitle,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/wikipage/change-parent": _params};

	[self.session invoke:_command];
}

- (NSDictionary *)getDraftPage:(long)nodeId title:(NSString *)title {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title
	};

	NSDictionary *_command = @{@"/wikipage/get-draft-page": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSString *)getNodePagesRss:(long)nodeId max:(int)max type:(NSString *)type version:(double)version displayStyle:(NSString *)displayStyle feedURL:(NSString *)feedURL entryURL:(NSString *)entryURL attachmentURLPrefix:(NSString *)attachmentURLPrefix {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"max": @(max),
		@"type": type,
		@"version": @(version),
		@"displayStyle": displayStyle,
		@"feedURL": feedURL,
		@"entryURL": entryURL,
		@"attachmentURLPrefix": attachmentURLPrefix
	};

	NSDictionary *_command = @{@"/wikipage/get-node-pages-rss": _params};

	return (NSString *)[self.session invoke:_command];
}

- (void)addPageAttachments:(long)nodeId title:(NSString *)title inputStreamOVPs:(NSArray *)inputStreamOVPs {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"inputStreamOVPs": inputStreamOVPs
	};

	NSDictionary *_command = @{@"/wikipage/add-page-attachments": _params};

	[self.session invoke:_command];
}

- (void)subscribePage:(long)nodeId title:(NSString *)title {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title
	};

	NSDictionary *_command = @{@"/wikipage/subscribe-page": _params};

	[self.session invoke:_command];
}

- (void)discardDraft:(long)nodeId title:(NSString *)title version:(double)version {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"version": @(version)
	};

	NSDictionary *_command = @{@"/wikipage/discard-draft": _params};

	[self.session invoke:_command];
}

- (void)addPageAttachment:(long)nodeId title:(NSString *)title fileName:(NSString *)fileName file:(NSDictionary *)file mimeType:(NSString *)mimeType {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"fileName": fileName,
		@"file": file,
		@"mimeType": mimeType
	};

	NSDictionary *_command = @{@"/wikipage/add-page-attachment": _params};

	[self.session invoke:_command];
}

- (NSDictionary *)addPage:(long)nodeId title:(NSString *)title content:(NSString *)content summary:(NSString *)summary minorEdit:(BOOL)minorEdit format:(NSString *)format parentTitle:(NSString *)parentTitle redirectTitle:(NSString *)redirectTitle serviceContext:(NSDictionary *)serviceContext {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"content": content,
		@"summary": summary,
		@"minorEdit": @(minorEdit),
		@"format": format,
		@"parentTitle": parentTitle,
		@"redirectTitle": redirectTitle,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/wikipage/add-page": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (void)deletePageAttachments:(long)nodeId title:(NSString *)title {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title
	};

	NSDictionary *_command = @{@"/wikipage/delete-page-attachments": _params};

	[self.session invoke:_command];
}

- (NSString *)getPagesRss:(long)companyId nodeId:(long)nodeId title:(NSString *)title max:(int)max type:(NSString *)type version:(double)version displayStyle:(NSString *)displayStyle feedURL:(NSString *)feedURL entryURL:(NSString *)entryURL attachmentURLPrefix:(NSString *)attachmentURLPrefix locale:(NSString *)locale {
	NSDictionary *_params = @{
		@"companyId": @(companyId),
		@"nodeId": @(nodeId),
		@"title": title,
		@"max": @(max),
		@"type": type,
		@"version": @(version),
		@"displayStyle": displayStyle,
		@"feedURL": feedURL,
		@"entryURL": entryURL,
		@"attachmentURLPrefix": attachmentURLPrefix,
		@"locale": locale
	};

	NSDictionary *_command = @{@"/wikipage/get-pages-rss": _params};

	return (NSString *)[self.session invoke:_command];
}

- (NSArray *)getOrphans:(long)groupId nodeId:(long)nodeId {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"nodeId": @(nodeId)
	};

	NSDictionary *_command = @{@"/wikipage/get-orphans": _params};

	return (NSArray *)[self.session invoke:_command];
}

- (NSArray *)getTempPageAttachmentNames:(long)nodeId tempFolderName:(NSString *)tempFolderName {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"tempFolderName": tempFolderName
	};

	NSDictionary *_command = @{@"/wikipage/get-temp-page-attachment-names": _params};

	return (NSArray *)[self.session invoke:_command];
}

- (void)restorePageAttachmentFromTrash:(long)nodeId title:(NSString *)title fileName:(NSString *)fileName {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"fileName": fileName
	};

	NSDictionary *_command = @{@"/wikipage/restore-page-attachment-from-trash": _params};

	[self.session invoke:_command];
}

- (void)unsubscribePage:(long)nodeId title:(NSString *)title {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title
	};

	NSDictionary *_command = @{@"/wikipage/unsubscribe-page": _params};

	[self.session invoke:_command];
}

- (NSArray *)getNodePages:(long)nodeId max:(int)max {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"max": @(max)
	};

	NSDictionary *_command = @{@"/wikipage/get-node-pages": _params};

	return (NSArray *)[self.session invoke:_command];
}

- (NSDictionary *)movePageToTrash:(long)nodeId title:(NSString *)title version:(double)version {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"version": @(version)
	};

	NSDictionary *_command = @{@"/wikipage/move-page-to-trash": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSDictionary *)movePageAttachmentToTrash:(long)nodeId title:(NSString *)title fileName:(NSString *)fileName {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"fileName": fileName
	};

	NSDictionary *_command = @{@"/wikipage/move-page-attachment-to-trash": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (void)deleteTempPageAttachment:(long)nodeId fileName:(NSString *)fileName tempFolderName:(NSString *)tempFolderName {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"fileName": fileName,
		@"tempFolderName": tempFolderName
	};

	NSDictionary *_command = @{@"/wikipage/delete-temp-page-attachment": _params};

	[self.session invoke:_command];
}

- (NSDictionary *)getPage:(long)nodeId title:(NSString *)title version:(double)version {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"version": @(version)
	};

	NSDictionary *_command = @{@"/wikipage/get-page": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (void)copyPageAttachments:(long)templateNodeId templateTitle:(NSString *)templateTitle nodeId:(long)nodeId title:(NSString *)title {
	NSDictionary *_params = @{
		@"templateNodeId": @(templateNodeId),
		@"templateTitle": templateTitle,
		@"nodeId": @(nodeId),
		@"title": title
	};

	NSDictionary *_command = @{@"/wikipage/copy-page-attachments": _params};

	[self.session invoke:_command];
}

- (NSArray *)getChildren:(long)groupId nodeId:(long)nodeId head:(BOOL)head parentTitle:(NSString *)parentTitle {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"nodeId": @(nodeId),
		@"head": @(head),
		@"parentTitle": parentTitle
	};

	NSDictionary *_command = @{@"/wikipage/get-children": _params};

	return (NSArray *)[self.session invoke:_command];
}

- (int)getRecentChangesCount:(long)groupId nodeId:(long)nodeId {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"nodeId": @(nodeId)
	};

	NSDictionary *_command = @{@"/wikipage/get-recent-changes-count": _params};

	return (int)[self.session invoke:_command];
}

- (int)getPagesCount:(long)groupId userId:(long)userId nodeId:(long)nodeId status:(int)status {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"userId": @(userId),
		@"nodeId": @(nodeId),
		@"status": @(status)
	};

	NSDictionary *_command = @{@"/wikipage/get-pages-count": _params};

	return (int)[self.session invoke:_command];
}

- (void)restorePageFromTrash:(long)resourcePrimKey {
	NSDictionary *_params = @{
		@"resourcePrimKey": @(resourcePrimKey)
	};

	NSDictionary *_command = @{@"/wikipage/restore-page-from-trash": _params};

	[self.session invoke:_command];
}

- (void)deletePageAttachment:(long)nodeId title:(NSString *)title fileName:(NSString *)fileName {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"fileName": fileName
	};

	NSDictionary *_command = @{@"/wikipage/delete-page-attachment": _params};

	[self.session invoke:_command];
}

- (void)movePage:(long)nodeId title:(NSString *)title newTitle:(NSString *)newTitle serviceContext:(NSDictionary *)serviceContext {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"newTitle": newTitle,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/wikipage/move-page": _params};

	[self.session invoke:_command];
}

- (void)deletePage:(long)nodeId title:(NSString *)title version:(double)version {
	NSDictionary *_params = @{
		@"nodeId": @(nodeId),
		@"title": title,
		@"version": @(version)
	};

	NSDictionary *_command = @{@"/wikipage/delete-page": _params};

	[self.session invoke:_command];
}

@end