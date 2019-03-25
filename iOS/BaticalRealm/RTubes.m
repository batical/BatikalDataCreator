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
             @"sectionM" ,
             @"sectionMm" ,
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
             @"sectionM" : @0.0,
             @"sectionMm" : @0.0,
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

	if(![dictionary[@"sectionM"] isKindOfClass:[NSNull class]]){
		self.sectionM = [dictionary[@"sectionM"] doubleValue];
	}

	if(![dictionary[@"sectionMm"] isKindOfClass:[NSNull class]]){
		self.sectionMm = [dictionary[@"sectionMm"] doubleValue];
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


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[@"debitH"] = @(self.debitH);
	dictionary[@"debitS"] = @(self.debitS);
	dictionary[@"diamExt"] = @(self.diamExt);
	dictionary[@"diamInt"] = @(self.diamInt);
	dictionary[@"epaisseur"] = @(self.epaisseur);
	if(self.material != nil){
		dictionary[@"material"] = self.material;
	}
	if(self.name != nil){
		dictionary[@"name"] = self.name;
	}
	dictionary[@"rugositeMax"] = @(self.rugositeMax);
	dictionary[@"rugositeMin"] = @(self.rugositeMin);
	dictionary[@"sectionM"] = @(self.sectionM);
	dictionary[@"sectionMm"] = @(self.sectionMm);
	if(self.type != nil){
		dictionary[@"type"] = self.type;
	}
	dictionary[@"vmax"] = @(self.vmax);
    dictionary[@"conductivity"] = @(self.conductivity);
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
	[aCoder encodeObject:@(self.debitH) forKey:@"debit_h"];	[aCoder encodeObject:@(self.debitS) forKey:@"debit_s"];	[aCoder encodeObject:@(self.diamExt) forKey:@"diam_ext"];	[aCoder encodeObject:@(self.diamInt) forKey:@"diam_int"];	[aCoder encodeObject:@(self.epaisseur) forKey:@"epaisseur"];	if(self.material != nil){
		[aCoder encodeObject:self.material forKey:@"material"];
	}
	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:@"name"];
	}
	[aCoder encodeObject:@(self.rugositeMax) forKey:@"rugosite_max"];	[aCoder encodeObject:@(self.rugositeMin) forKey:@"rugosite_min"];	[aCoder encodeObject:@(self.sectionM) forKey:@"section_m"];	[aCoder encodeObject:@(self.sectionMm) forKey:@"section_mm"];	if(self.type != nil){
		[aCoder encodeObject:self.type forKey:@"type"];
	}
	[aCoder encodeObject:@(self.vmax) forKey:@"vmax"];
    [aCoder encodeObject:@(self.conductivity) forKey:@"conductivity"];
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.debitH = [[aDecoder decodeObjectForKey:@"debit_h"] doubleValue];
	self.debitS = [[aDecoder decodeObjectForKey:@"debit_s"] doubleValue];
	self.diamExt = [[aDecoder decodeObjectForKey:@"diam_ext"] doubleValue];
	self.diamInt = [[aDecoder decodeObjectForKey:@"diam_int"] doubleValue];
	self.epaisseur = [[aDecoder decodeObjectForKey:@"epaisseur"] doubleValue];
	self.material = [aDecoder decodeObjectForKey:@"material"];
	self.name = [aDecoder decodeObjectForKey:@"name"];
	self.rugositeMax = [[aDecoder decodeObjectForKey:@"rugosite_max"] doubleValue];
	self.rugositeMin = [[aDecoder decodeObjectForKey:@"rugosite_min"] doubleValue];
	self.sectionM = [[aDecoder decodeObjectForKey:@"section_m"] doubleValue];
	self.sectionMm = [[aDecoder decodeObjectForKey:@"section_mm"] doubleValue];
	self.type = [aDecoder decodeObjectForKey:@"type"];
	self.vmax = [[aDecoder decodeObjectForKey:@"vmax"] doubleValue];
    self.conductivity = [[aDecoder decodeObjectForKey:@"conductivity"] doubleValue];
    
	return self;

}
@end
