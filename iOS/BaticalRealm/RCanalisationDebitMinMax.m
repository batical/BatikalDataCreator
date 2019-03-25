//
//	CanalsatinDebitMinMax.m
//
//	Create by Sebastien Hecart on 13/12/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RCanalisationDebitMinMax.h"

@interface RCanalisationDebitMinMax ()
@end
@implementation RCanalisationDebitMinMax

+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name", @"debitMin",@"debitMax"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"debitMax" : @0.0,
             @"debitMin" : @0.0,
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

	if(![dictionary[@"debitMax"] isKindOfClass:[NSNull class]]){
		self.debitMax = [dictionary[@"debitMax"] doubleValue];
	}

	if(![dictionary[@"debitMin"] isKindOfClass:[NSNull class]]){
		self.debitMin = [dictionary[@"debitMin"] doubleValue];
	}

	if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
		self.name = dictionary[@"name"];
	}

	if(![dictionary[@"uuid"] isKindOfClass:[NSNull class]]){
		self.uuid = dictionary[@"uuid"];
	}

	return self;
}
@end
