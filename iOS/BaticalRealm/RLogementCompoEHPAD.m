//
//	RLogementCompoEHPAD.m
//
//	Create by Sebastien Hecart on 8/12/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RLogementCompoEHPAD.h"

NSString *const kRLogementCompoEHPADName = @"name";
NSString *const kRLogementCompoEHPADNbStandard = @"nbStandard";
NSString *const kRLogementCompoEHPADUuid = @"uuid";

@interface RLogementCompoEHPAD ()
@end
@implementation RLogementCompoEHPAD

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
	if(![dictionary[kRLogementCompoEHPADName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kRLogementCompoEHPADName];
	}	
	if(![dictionary[kRLogementCompoEHPADNbStandard] isKindOfClass:[NSNull class]]){
		self.nbStandard = [dictionary[kRLogementCompoEHPADNbStandard] doubleValue];
	}

	if(![dictionary[kRLogementCompoEHPADUuid] isKindOfClass:[NSNull class]]){
		self.uuid = dictionary[kRLogementCompoEHPADUuid];
	}	
	return self;
}


@end
