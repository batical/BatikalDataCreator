//
//	RDepartementZone.m
//
//	Create by Sebastien Hecart on 1/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RDepartementTemperatureExt.h"
#import "RTempExtZone.h"

@interface RDepartementTemperatureExt ()
@end
@implementation RDepartementTemperatureExt


+ (NSString *)primaryKey{
    return @"departement";
}

+ (NSArray *)requiredProperties {
    return @[ @"departement"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"departement" : @""};
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

	if(![dictionary[@"departement"] isKindOfClass:[NSNull class]]){
		self.departement = dictionary[@"departement"];
	}

	if(dictionary[@"tempratureExts"] != nil && ![dictionary[@"tempratureExts"] isKindOfClass:[NSNull class]]){
		NSArray * zonesDictionaries = dictionary[@"tempratureExts"];
		RLMArray * zonesItems = [[RLMArray alloc] initWithObjectClassName:[RTempExtZone className]];
		for(NSDictionary * zonesDictionary in zonesDictionaries){
			RTempExtZone * zonesItem = [[RTempExtZone alloc] initWithDictionary:zonesDictionary];
			[zonesItems addObject:zonesItem];
		}
		self.tempratureExts = (RLMArray<RTempExtZone> *)zonesItems;
	}
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.departement != nil){
		dictionary[@"departement"] = self.departement;
	}
	if(self.tempratureExts != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(RTempExtZone * zonesElement in self.tempratureExts){
			[dictionaryElements addObject:[zonesElement toDictionary]];
		}
		dictionary[@"tempratureExts"] = dictionaryElements;
	}
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
	if(self.departement != nil){
		[aCoder encodeObject:self.departement forKey:@"departement"];
	}
	if(self.tempratureExts != nil){
		[aCoder encodeObject:self.tempratureExts forKey:@"tempratureExts"];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.departement = [aDecoder decodeObjectForKey:@"departement"];
	self.tempratureExts = [aDecoder decodeObjectForKey:@"tempratureExts"];
	return self;

}
@end
