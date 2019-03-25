//
//	RTempExtzoneGeo.m
//
//	Create by Sebastien Hecart on 1/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RTempExtZone.h"

@interface RTempExtZone ()
@end
@implementation RTempExtZone


+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid", @"zoneGeo", @"altitudeMin", @"altitudeMax"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
              @"temperature" : @0.0,
              @"altitudeMin" : @0,
              @"altitudeMax" : @0,
             @"zoneGeo" : @"" };
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
	if(![dictionary[@"altitude_max"] isKindOfClass:[NSNull class]]){
		self.altitudeMax = [dictionary[@"altitudeMax"] integerValue];
	}

	if(![dictionary[@"altitude_min"] isKindOfClass:[NSNull class]]){
		self.altitudeMin = [dictionary[@"altitudeMin"] integerValue];
	}

	if(![dictionary[@"temperature"] isKindOfClass:[NSNull class]]){
		self.temperature = [dictionary[@"temperature"] doubleValue];
	}

	if(![dictionary[@"zoneGeo"] isKindOfClass:[NSNull class]]){
		self.zoneGeo = dictionary[@"zoneGeo"];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[@"altitude_max"] = @(self.altitudeMax);
	dictionary[@"altitude_min"] = @(self.altitudeMin);
    dictionary[@"temperature"] = @(self.temperature);
	if(self.zoneGeo != nil){
		dictionary[@"zoneGeo"] = self.zoneGeo;
	}
    if(self.uuid != nil){
        dictionary[@"uuid"] = self.uuid;
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
	[aCoder encodeObject:@(self.altitudeMax) forKey:@"altitude_max"];
    [aCoder encodeObject:@(self.altitudeMin) forKey:@"altitude_min"];
    [aCoder encodeObject:@(self.temperature) forKey:@"temperature"];
	if(self.zoneGeo != nil){
		[aCoder encodeObject:self.zoneGeo forKey:@"zoneGeo"];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.altitudeMax = [[aDecoder decodeObjectForKey:@"altitude_max"] integerValue];
	self.altitudeMin = [[aDecoder decodeObjectForKey:@"altitude_min"] integerValue];
	self.temperature = [[aDecoder decodeObjectForKey:@"temperature"] doubleValue];
	self.zoneGeo = [aDecoder decodeObjectForKey:@"zoneGeo"];
	return self;

}
@end
