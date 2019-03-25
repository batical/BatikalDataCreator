//
//	RCapaResine.m
//
//	Create by Sebastien Hecart on 3/12/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RCapaResine.h"

@interface RCapaResine ()
@end
@implementation RCapaResine

+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name", @"saltcapacity" , @"saltquantity"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"saltcapacity" : @0.0,
             @"saltquantity" : @0.0,
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

	if(![dictionary[@"saltcapacity"] isKindOfClass:[NSNull class]]){
		self.saltcapacity = [dictionary[@"saltcapacity"] doubleValue];
	}

	if(![dictionary[@"saltquantity"] isKindOfClass:[NSNull class]]){
		self.saltquantity = [dictionary[@"saltquantity"] doubleValue];
	}

	if(![dictionary[@"uuid"] isKindOfClass:[NSNull class]]){
		self.uuid = dictionary[@"uuid"];
	}

	return self;
}


@end
