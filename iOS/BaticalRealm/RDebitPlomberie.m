//
//	RDebitPlomberie.m
//
//	Create by Sebastien Hecart on 9/12/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RDebitPlomberie.h"

@interface RDebitPlomberie ()
@end
@implementation RDebitPlomberie


+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name", @"temperature",@"debit"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"temperature" : @0.0,
             @"debit" : @0.0,
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

	if(![dictionary[@"debit"] isKindOfClass:[NSNull class]]){
		self.debit = [dictionary[@"debit"] doubleValue];
	}

	if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
		self.name = dictionary[@"name"];
	}

	if(![dictionary[@"temperature"] isKindOfClass:[NSNull class]]){
		self.temperature = [dictionary[@"temperature"] doubleValue];
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
	dictionary[@"debit"] = @(self.debit);
	if(self.name != nil){
		dictionary[@"name"] = self.name;
	}
	dictionary[@"temperature"] = @(self.temperature);
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
	[aCoder encodeObject:@(self.debit) forKey:@"debit"];	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:@"name"];
	}
	[aCoder encodeObject:@(self.temperature) forKey:@"temperature"];	if(self.uuid != nil){
		[aCoder encodeObject:self.uuid forKey:@"uuid"];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.debit = [[aDecoder decodeObjectForKey:@"debit"] floatValue];
	self.name = [aDecoder decodeObjectForKey:@"name"];
	self.temperature = [[aDecoder decodeObjectForKey:@"temperature"] integerValue];
	self.uuid = [aDecoder decodeObjectForKey:@"uuid"];
	return self;

}
@end
