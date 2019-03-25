//
//	RCompostionFoyerStandard.m
//
//	Create by Sebastien Hecart on 8/12/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RCompostionFoyerStandard.h"

NSString *const kRCompostionFoyerStandardName = @"name";
NSString *const kRCompostionFoyerStandardNbStandard = @"nbStandard";
NSString *const kRCompostionFoyerStandardUuid = @"uuid";

@interface RCompostionFoyerStandard ()
@end
@implementation RCompostionFoyerStandard
+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name", @"nbStandard"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"nbStandard" : @0.0,
             @"name" : @"",};
}




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kRCompostionFoyerStandardName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kRCompostionFoyerStandardName];
	}	
	if(![dictionary[kRCompostionFoyerStandardNbStandard] isKindOfClass:[NSNull class]]){
		self.nbStandard = [dictionary[kRCompostionFoyerStandardNbStandard] doubleValue];
	}

	if(![dictionary[kRCompostionFoyerStandardUuid] isKindOfClass:[NSNull class]]){
		self.uuid = dictionary[kRCompostionFoyerStandardUuid];
	}	
	return self;
}


@end
