//
//	RTubes.m
//
//	Create by Sebastien Hecart on 19/3/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RTubes.h"

@interface RTubes ()
@end
@implementation RTubes

+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid" ,
             @"debitH" ,
             @"debitS" ,
             @"diamExt",
             @"diamInt" ,
             @"epaisseur",
             @"material",
             @"name" ,
             @"rugositeMax",
             @"rugositeMin" ,
             @"type",
             @"vmax",
             @"conductivity"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"debitH" : @0.0,
             @"debitS" : @0.0,
             @"diamExt" : @0.0,
             @"diamInt" : @0.0,
             @"epaisseur" : @0.0,
             @"material" : @"",
             @"name" : @"",
             @"rugositeMax" : @0.0,
             @"rugositeMin" : @0.0,
             @"type" : @"",
             @"vmax" : @0.0,
             @"conductivity" : @0.0};
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
	if(![dictionary[@"debitH"] isKindOfClass:[NSNull class]]){
		self.debitH = [dictionary[@"debitH"] doubleValue];
	}

	if(![dictionary[@"debitS"] isKindOfClass:[NSNull class]]){
		self.debitS = [dictionary[@"debitS"] doubleValue];
	}

	if(![dictionary[@"diamExt"] isKindOfClass:[NSNull class]]){
		self.diamExt = [dictionary[@"diamExt"] doubleValue];
	}

	if(![dictionary[@"diamInt"] isKindOfClass:[NSNull class]]){
		self.diamInt = [dictionary[@"diamInt"] doubleValue];
	}

	if(![dictionary[@"epaisseur"] isKindOfClass:[NSNull class]]){
		self.epaisseur = [dictionary[@"epaisseur"] doubleValue];
	}

	if(![dictionary[@"material"] isKindOfClass:[NSNull class]]){
		self.material = dictionary[@"material"];
	}

	if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
		self.name = dictionary[@"name"];
	}

	if(![dictionary[@"rugositeMax"] isKindOfClass:[NSNull class]]){
		self.rugositeMax = [dictionary[@"rugositeMax"] doubleValue];
	}

	if(![dictionary[@"rugositeMin"] isKindOfClass:[NSNull class]]){
		self.rugositeMin = [dictionary[@"rugositeMin"] doubleValue];
	}

	if(![dictionary[@"type"] isKindOfClass:[NSNull class]]){
		self.type = dictionary[@"type"];
	}

	if(![dictionary[@"vmax"] isKindOfClass:[NSNull class]]){
		self.vmax = [dictionary[@"vmax"] doubleValue];
	}
    
    if(![dictionary[@"conductivity"] isKindOfClass:[NSNull class]]){
        self.conductivity = [dictionary[@"conductivity"] doubleValue];
    }
    

	return self;
}

@end
