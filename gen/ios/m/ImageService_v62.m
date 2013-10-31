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

#import "ImageService_v62.h"

/**
 * author Bruno Farache
 */
@implementation ImageService_v62

- (NSDictionary *)getImage:(long)imageId {
	NSDictionary *_params = @{
		@"imageId": @(imageId)
	};

	NSDictionary *_command = @{@"/image/get-image": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

@end