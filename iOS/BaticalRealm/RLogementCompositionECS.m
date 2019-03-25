//
//	LogementCompositionECS.m
//
//	Create by Sebastien Hecart on 3/12/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RLogementCompositionECS.h"

@interface RLogementCompositionECS ()
@end
@implementation RLogementCompositionECS

+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name", @"nb_douche", @"nb_evier", @"nb_vasque", @"nb_baignoire", @"coeffPrive",
             @"coeffSocial",
             @"prive40",
             @"social40",@"coeffQualitel"];
}


+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"nb_douche" : @0.0,
             @"nb_evier" : @0.0,
             @"nb_vasque" : @0.0,
             @"nb_baignoire" : @0.0,
             @"coeffPrive" : @0.0,
             @"coeffSocial" : @0.0,
             @"prive40" : @0.0,
             @"social40" : @0.0,
             @"coeffQualitel" : @0.0,
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

    if(![dictionary[@"coeff_prive"] isKindOfClass:[NSNull class]]){
        self.coeffPrive = [dictionary[@"coeffPrive"] doubleValue];
    }
    
    if(![dictionary[@"coeff_social"] isKindOfClass:[NSNull class]]){
        self.coeffSocial = [dictionary[@"coeffSocial"] doubleValue];
    }
    if(![dictionary[@"nb_baignoire"] isKindOfClass:[NSNull class]]){
        self.nb_baignoire = [dictionary[@"nb_baignoire"] doubleValue];
    }
    
    if(![dictionary[@"nb_douche"] isKindOfClass:[NSNull class]]){
        self.nb_douche = [dictionary[@"nb_douche"] doubleValue];
    }
    
    if(![dictionary[@"nb_evier"] isKindOfClass:[NSNull class]]){
        self.nb_evier = [dictionary[@"nb_evier"] doubleValue];
    }
    
    if(![dictionary[@"nb_vasque"] isKindOfClass:[NSNull class]]){
        self.nb_vasque = [dictionary[@"nb_vasque"] doubleValue];
    }

    
    if(![dictionary[@"prive40"] isKindOfClass:[NSNull class]]){
        self.prive40 = [dictionary[@"prive40"] doubleValue];
    }
    if(![dictionary[@"coeffQualitel"] isKindOfClass:[NSNull class]]){
        self.coeffQualitel = [dictionary[@"coeffQualitel"] doubleValue];
    }
    
    
    if(![dictionary[@"social40"] isKindOfClass:[NSNull class]]){
        self.social40 = [dictionary[@"social40"] doubleValue];
    }

	if(![dictionary[@"uuid"] isKindOfClass:[NSNull class]]){
		self.uuid = dictionary[@"uuid"];
	}
	return self;
}



@end
