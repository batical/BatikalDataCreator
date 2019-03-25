//
//	RTypeRadiateur.m
//
//	Create by Sébastien Hecart on 19/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RTypeRadiateur.h"

@interface RTypeRadiateur ()
@end
@implementation RTypeRadiateur


+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"add" ,
             @"factor" ,
             @"name"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"add" : @0.0,
             @"factor" : @0.0,
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
	if(![dictionary[@"add"] isKindOfClass:[NSNull class]]){
		self.add = [dictionary[@"add"] doubleValue];
	}

	if(![dictionary[@"factor"] isKindOfClass:[NSNull class]]){
		self.factor = [dictionary[@"factor"] doubleValue];
	}

	if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
		self.name = dictionary[@"name"];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[@"add"] = @(self.add);
	dictionary[@"factor"] = @(self.factor);
	if(self.name != nil){
		dictionary[@"name"] = self.name;
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
	[aCoder encodeObject:@(self.add) forKey:@"add"];	[aCoder encodeObject:@(self.factor) forKey:@"factor"];	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:@"name"];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.add = [[aDecoder decodeObjectForKey:@"add"] doubleValue];
	self.factor = [[aDecoder decodeObjectForKey:@"factor"] doubleValue];
	self.name = [aDecoder decodeObjectForKey:@"name"];
	return self;

}
@end
