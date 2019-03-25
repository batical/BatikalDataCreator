//
//	RCoefficientD.m
//
//	Create by Sébastien Hecart on 6/7/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RCoefficientMajorationBatiment.h"

@interface RCoefficientMajorationBatiment ()
@end
@implementation RCoefficientMajorationBatiment


+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name", @"coeffMajoration", @"content",@"litresJour", @"periodeHorairePointe",@"phdp", @"simultanite",@"tempsDeuxPointes"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"coeffMajoration" : @0.0,
             @"name" : @"",
             @"content" : @"",
             @"litresJour" : @0.0,
             @"periodeHorairePointe" : @0.0,@"phdp" : @0.0, @"simultanite" : @0.0,@"tempsDeuxPointes" : @0.0
             };
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
	if(![dictionary[@"coeff_majoration"] isKindOfClass:[NSNull class]]){
		self.coeffMajoration = [dictionary[@"coeffMajoration"] doubleValue];
	}
    if(![dictionary[@"litresJour"] isKindOfClass:[NSNull class]]){
        self.litresJour = [dictionary[@"litresJour"] doubleValue];
    }
    if(![dictionary[@"periodeHorairePointe"] isKindOfClass:[NSNull class]]){
        self.periodeHorairePointe = [dictionary[@"periodeHorairePointe"] doubleValue];
    }
    if(![dictionary[@"phdp"] isKindOfClass:[NSNull class]]){
        self.phdp = [dictionary[@"phdp"] doubleValue];
    }
    if(![dictionary[@"simultanite"] isKindOfClass:[NSNull class]]){
        self.simultanite = [dictionary[@"simultanite"] doubleValue];
    }
    if(![dictionary[@"tempsDeuxPointes"] isKindOfClass:[NSNull class]]){
        self.tempsDeuxPointes = [dictionary[@"tempsDeuxPointes"] doubleValue];
    }

	if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
		self.name = dictionary[@"name"];
	}
    
    if(![dictionary[@"content"] isKindOfClass:[NSNull class]]){
        self.content = dictionary[@"content"];
    }

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[@"coeffMajoration"] = @(self.coeffMajoration);
	if(self.name != nil){
		dictionary[@"name"] = self.name;
	}
    if(self.content != nil){
        dictionary[@"content"] = self.content;
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
	[aCoder encodeObject:@(self.coeffMajoration) forKey:@"coeff_majoration"];
    if(self.name != nil){
		[aCoder encodeObject:self.name forKey:@"name"];
	}
    if(self.content != nil){
        [aCoder encodeObject:self.content forKey:@"content"];
    }

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.coeffMajoration = [[aDecoder decodeObjectForKey:@"coeff_majoration"] doubleValue];
	self.name = [aDecoder decodeObjectForKey:@"name"];
    self.content = [aDecoder decodeObjectForKey:@"content"];
	return self;

}
@end
