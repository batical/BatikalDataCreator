//
//	RConductivity.m
//
//	Create by Sebastien Hecart on 21/3/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RPerteChargeUniteCalcul.h"

@interface RPerteChargeUniteCalcul ()
@end
@implementation RPerteChargeUniteCalcul


+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name", @"factor"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"name" : @"",
             @"factor" : @1.0};
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
	if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
		self.name = dictionary[@"name"];
	}
    if(![dictionary[@"factor"] isKindOfClass:[NSNull class]]){
        self.factor = [dictionary[@"factor"] doubleValue];
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
    dictionary[@"factor"] = @(self.factor);
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
    [aCoder encodeObject:@(self.factor) forKey:@"factor"];
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:@"name"];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
    self.factor = [[aDecoder decodeObjectForKey:@"factor"] doubleValue];
	self.name = [aDecoder decodeObjectForKey:@"name"];
	return self;

}
@end
