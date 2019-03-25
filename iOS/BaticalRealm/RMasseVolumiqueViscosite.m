//
//	RMasseVolumiqueViscosite.m
//
//	Create by Sebastien Hecart on 4/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RMasseVolumiqueViscosite.h"

@interface RMasseVolumiqueViscosite ()
@end
@implementation RMasseVolumiqueViscosite


+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name",@"chaleurMassiqueKcalkgK",@"chaleurMassiqueKjkgK",@"chaleurVolumiqueKjm3",@"chaleurSensibleKcalkg",@"chaleurSensibleKjkg",@"masseVolumique",@"pressionVavpeurSaturantePa",@"temperature",@"viscositeKgms"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"name" : @"",
             @"chaleurMassiqueKcalkgK" :@0.0,
             @"chaleurMassiqueKjkgK" :@0.0,
             @"chaleurVolumiqueKjm3" :@0.0,
             @"chaleurSensibleKcalkg" :@0.0,
             @"chaleurSensibleKjkg" :@0.0,
             @"masseVolumique" :@0.0,
             @"pressionVavpeurSaturantePa" :@0.0,
             @"temperature" :@0.0,
             @"viscositeKgms" :@0.0};
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
	if(![dictionary[@"chaleurMassiqueKcalkgK"] isKindOfClass:[NSNull class]]){
		self.chaleurMassiqueKcalkgK = [dictionary[@"chaleurMassiqueKcalkgK"] doubleValue];
	}

	if(![dictionary[@"chaleurMassiqueKjkgK"] isKindOfClass:[NSNull class]]){
		self.chaleurMassiqueKjkgK = [dictionary[@"chaleurMassiqueKjkgK"] doubleValue];
	}

	if(![dictionary[@"chaleurVolumiqueKjm3"] isKindOfClass:[NSNull class]]){
		self.chaleurVolumiqueKjm3 = [dictionary[@"chaleurVolumiqueKjm3"] doubleValue];
	}

	if(![dictionary[@"chaleurSensibleKcalkg"] isKindOfClass:[NSNull class]]){
		self.chaleurSensibleKcalkg = [dictionary[@"chaleurSensibleKcalkg"] doubleValue];
	}

	if(![dictionary[@"chaleurSensibleKjkg"] isKindOfClass:[NSNull class]]){
		self.chaleurSensibleKjkg = [dictionary[@"chaleurSensibleKjkg"] doubleValue];
	}

	if(![dictionary[@"masseVolumique"] isKindOfClass:[NSNull class]]){
		self.masseVolumique = [dictionary[@"masseVolumique"] doubleValue];
	}

	if(![dictionary[@"pressionVavpeurSaturantePa"] isKindOfClass:[NSNull class]]){
		self.pressionVavpeurSaturantePa = [dictionary[@"pressionVavpeurSaturantePa"] doubleValue];
	}

	if(![dictionary[@"temperature"] isKindOfClass:[NSNull class]]){
		self.temperature = [dictionary[@"temperature"] doubleValue];
	}

	if(![dictionary[@"viscositeKgms"] isKindOfClass:[NSNull class]]){
		self.viscositeKgms = [dictionary[@"viscositeKgms"] doubleValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[@"chaleurMassiqueKcalkgK"] = @(self.chaleurMassiqueKcalkgK);
	dictionary[@"chaleurMassiqueKjkgK"] = @(self.chaleurMassiqueKjkgK);
	dictionary[@"chaleurVolumiqueKjm3"] = @(self.chaleurVolumiqueKjm3);
	dictionary[@"chaleurSensibleKcalkg"] = @(self.chaleurSensibleKcalkg);
	dictionary[@"chaleurSensibleKjkg"] = @(self.chaleurSensibleKjkg);
	dictionary[@"masseVolumique"] = @(self.masseVolumique);
	dictionary[@"pressionVavpeurSaturantePa"] = @(self.pressionVavpeurSaturantePa);
	dictionary[@"temperature"] = @(self.temperature);
	dictionary[@"viscositeKgms"] = @(self.viscositeKgms);
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
	[aCoder encodeObject:@(self.chaleurMassiqueKcalkgK) forKey:@"chaleur_massique_kcalkgK"];	[aCoder encodeObject:@(self.chaleurMassiqueKjkgK) forKey:@"chaleur_massique_kjkgK"];	[aCoder encodeObject:@(self.chaleurVolumiqueKjm3) forKey:@"chaleur_volumique_kjm3"];	[aCoder encodeObject:@(self.chaleurSensibleKcalkg) forKey:@"chaleur_sensible_kcalkg"];	[aCoder encodeObject:@(self.chaleurSensibleKjkg) forKey:@"chaleur_sensible_kjkg"];	[aCoder encodeObject:@(self.masseVolumique) forKey:@"masse_volumique"];	[aCoder encodeObject:@(self.pressionVavpeurSaturantePa) forKey:@"pression_vavpeur_saturante_pa"];	[aCoder encodeObject:@(self.temperature) forKey:@"temperature"];	[aCoder encodeObject:@(self.viscositeKgms) forKey:@"viscosite_kgms"];
    [aCoder encodeObject:self.name forKey:@"name"];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.chaleurMassiqueKcalkgK = [[aDecoder decodeObjectForKey:@"chaleur_massique_kcalkgK"] doubleValue];
	self.chaleurMassiqueKjkgK = [[aDecoder decodeObjectForKey:@"chaleur_massique_kjkgK"] doubleValue];
	self.chaleurVolumiqueKjm3 = [[aDecoder decodeObjectForKey:@"chaleur_volumique_kjm3"] doubleValue];
	self.chaleurSensibleKcalkg = [[aDecoder decodeObjectForKey:@"chaleur_sensible_kcalkg"] doubleValue];
	self.chaleurSensibleKjkg = [[aDecoder decodeObjectForKey:@"chaleur_sensible_kjkg"] doubleValue];
	self.masseVolumique = [[aDecoder decodeObjectForKey:@"masse_volumique"] doubleValue];
	self.pressionVavpeurSaturantePa = [[aDecoder decodeObjectForKey:@"pression_vavpeur_saturante_pa"] doubleValue];
	self.temperature = [[aDecoder decodeObjectForKey:@"temperature"] doubleValue];
	self.viscositeKgms = [[aDecoder decodeObjectForKey:@"viscosite_kgms"] doubleValue];
    self.name = [aDecoder decodeObjectForKey:@"name"];
	return self;

}
@end
