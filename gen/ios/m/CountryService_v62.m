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

#import "CountryService_v62.h"

/**
 * author Bruno Farache
 */
@implementation CountryService_v62

- (NSDictionary *)getCountryByName:(NSString *)name {
	NSDictionary *_params = @{
		@"name": name
	};

	NSDictionary *_command = @{@"/country/get-country-by-name": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSDictionary *)getCountryByA2:(NSString *)a2 {
	NSDictionary *_params = @{
		@"a2": a2
	};

	NSDictionary *_command = @{@"/country/get-country-by-a2": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSDictionary *)getCountryByA3:(NSString *)a3 {
	NSDictionary *_params = @{
		@"a3": a3
	};

	NSDictionary *_command = @{@"/country/get-country-by-a3": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSDictionary *)fetchCountry:(long)countryId {
	NSDictionary *_params = @{
		@"countryId": @(countryId)
	};

	NSDictionary *_command = @{@"/country/fetch-country": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSDictionary *)getCountry:(long)countryId {
	NSDictionary *_params = @{
		@"countryId": @(countryId)
	};

	NSDictionary *_command = @{@"/country/get-country": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSDictionary *)fetchCountryByA3:(NSString *)a3 {
	NSDictionary *_params = @{
		@"a3": a3
	};

	NSDictionary *_command = @{@"/country/fetch-country-by-a3": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSDictionary *)fetchCountryByA2:(NSString *)a2 {
	NSDictionary *_params = @{
		@"a2": a2
	};

	NSDictionary *_command = @{@"/country/fetch-country-by-a2": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

- (NSArray *)getCountries:(BOOL)active {
	NSDictionary *_params = @{
		@"active": @(active)
	};

	NSDictionary *_command = @{@"/country/get-countries": _params};

	return (NSArray *)[self.session invoke:_command];
}

- (NSDictionary *)addCountry:(NSString *)name a2:(NSString *)a2 a3:(NSString *)a3 number:(NSString *)number idd:(NSString *)idd active:(BOOL)active {
	NSDictionary *_params = @{
		@"name": name,
		@"a2": a2,
		@"a3": a3,
		@"number": number,
		@"idd": idd,
		@"active": @(active)
	};

	NSDictionary *_command = @{@"/country/add-country": _params};

	return (NSDictionary *)[self.session invoke:_command];
}

@end