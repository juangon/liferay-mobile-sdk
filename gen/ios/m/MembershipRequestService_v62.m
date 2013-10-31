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

#import "MembershipRequestService_v62.h"

/**
 * author Bruno Farache
 */
@implementation MembershipRequestService_v62

- (NSDictionary *)addMembershipRequest:(long)groupId comments:(NSString *)comments serviceContext:(NSDictionary *)serviceContext {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"comments": comments,
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/membershiprequest/add-membership-request": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSDictionary *)getMembershipRequest:(long)membershipRequestId {
	NSDictionary *_params = @{
		@"membershipRequestId": @(membershipRequestId)
	};

	NSDictionary *_command = @{@"/membershiprequest/get-membership-request": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (void)updateStatus:(long)membershipRequestId reviewComments:(NSString *)reviewComments statusId:(int)statusId serviceContext:(NSDictionary *)serviceContext {
	NSDictionary *_params = @{
		@"membershipRequestId": @(membershipRequestId),
		@"reviewComments": reviewComments,
		@"statusId": @(statusId),
		@"serviceContext": serviceContext
	};

	NSDictionary *_command = @{@"/membershiprequest/update-status": _params};

	[self.session invoke:_command];
}

- (void)deleteMembershipRequests:(long)groupId statusId:(int)statusId {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"statusId": @(statusId)
	};

	NSDictionary *_command = @{@"/membershiprequest/delete-membership-requests": _params};

	[self.session invoke:_command];
}

@end