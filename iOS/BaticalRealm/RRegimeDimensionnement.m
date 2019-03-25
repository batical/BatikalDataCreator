//
//	RRegimeDimensionnement.m
//
//	Create by Sébastien Hecart on 19/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RRegimeDimensionnement.h"

@interface RRegimeDimensionnement ()
@end
@implementation RRegimeDimensionnement


+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"coefficient_reduction" : @0.0,
             @"dt_moyenne" : @0.0,
             @"temperature_moyenne" : @0.0,
             @"name" : @""};
}


/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	if(dictionary == nil || [dictionary isKindOfClass:[NSNull class]]){
		return nil;
	}
	self = [super init];
    if(![dictionary[@"uuid"] isKindOfClass:[NSNull class]]){
        self.uuid = dictionary[@"uuid"];
    }
	if(![dictionary[@"coefficient_reduction"] isKindOfClass:[NSNull class]]){
		self.coefficient_reduction = [dictionary[@"coefficient_reduction"] doubleValue];
	}

	if(![dictionary[@"dt_moyenne"] isKindOfClass:[NSNull class]]){
		self.dt_moyenne = [dictionary[@"dt_moyenne"] doubleValue];
	}

	if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
		self.name = dictionary[@"name"];
	}

	if(![dictionary[@"temperature_moyenne"] isKindOfClass:[NSNull class]]){
		self.temperature_moyenne = [dictionary[@"temperature_moyenne"] doubleValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[@"coefficient_reduction"] = @(self.coefficient_reduction);
	dictionary[@"dt_moyenne"] = @(self.dt_moyenne);
	if(self.name != nil){
		dictionary[@"name"] = self.name;
	}
    if(self.uuid != nil){
        dictionary[@"uuid"] = self.uuid;
    }
	dictionary[@"temperature_moyenne"] = @(self.temperature_moyenne);
	return dictionary;

}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
	[aCoder encodeObject:@(self.coefficient_reduction) forKey:@"coefficient_reduction"];	[aCoder encodeObject:@(self.dt_moyenne) forKey:@"dt_moyenne"];	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:@"name"];
	}
	[aCoder encodeObject:@(self.temperature_moyenne) forKey:@"temperatyre_moyenne"];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.coefficient_reduction = [[aDecoder decodeObjectForKey:@"coefficient_reduction"] doubleValue];
	self.dt_moyenne = [[aDecoder decodeObjectForKey:@"dt_moyenne"] integerValue];
	self.name = [aDecoder decodeObjectForKey:@"name"];
	self.temperature_moyenne = [[aDecoder decodeObjectForKey:@"temperatyre_moyenne"] integerValue];
	return self;

}
@end
