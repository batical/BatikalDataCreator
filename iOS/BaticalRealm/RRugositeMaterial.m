//
//	RRugositeMaterial.m
//
//	Create by Sebastien Hecart on 3/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RRugositeMaterial.h"

@interface RRugositeMaterial ()
@end
@implementation RRugositeMaterial

+ (NSString *)primaryKey{
    return @"uuid";
}
    
+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name", @"rugosite"];
}
    
+ (NSDictionary *) defaultPropertyValues
    {
        return @{@"uuid" : [[NSUUID UUID] UUIDString],
                 @"rugosite" : @0.0,
                 @"name" : @"",};
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

	if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
		self.name = dictionary[@"name"];
	}

	if(![dictionary[@"rugosite"] isKindOfClass:[NSNull class]]){
		self.rugosite = [dictionary[@"rugosite"] doubleValue];
	}

	if(![dictionary[@"uuid"] isKindOfClass:[NSNull class]]){
		self.uuid = dictionary[@"uuid"];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.name != nil){
		dictionary[@"name"] = self.name;
	}
	dictionary[@"rugosite"] = @(self.rugosite);
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
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:@"name"];
	}
	[aCoder encodeObject:@(self.rugosite) forKey:@"rugosite"];	if(self.uuid != nil){
		[aCoder encodeObject:self.uuid forKey:@"uuid"];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.name = [aDecoder decodeObjectForKey:@"name"];
	self.rugosite = [[aDecoder decodeObjectForKey:@"rugosite"] floatValue];
	self.uuid = [aDecoder decodeObjectForKey:@"uuid"];
	return self;

}
@end
