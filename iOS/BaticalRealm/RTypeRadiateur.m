//
//	RTypeRadiateur.m
//
//	Create by Sébastien Hecart on 19/4/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RTypeRadiateur.h"

@interface RTypeRadiateur ()
@end
@implementation RTypeRadiateur


+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"expn" ,@"type",
             @"coeffkm" ,
             @"puiss50kw",
             @"largeur",
             @"name"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"type" : @"",
             @"expn": @0.0,
             @"coeffkm" : @0.0,
             @"puiss50kw": @0.0,
             @"largeur": @0.0,
             @"name" : @""};
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
	if(![dictionary[@"expn"] isKindOfClass:[NSNull class]]){
		self.expn = [dictionary[@"expn"] doubleValue];
	}
    if(![dictionary[@"coeffkm"] isKindOfClass:[NSNull class]]){
        self.coeffkm = [dictionary[@"coeffkm"] doubleValue];
    }
    if(![dictionary[@"puiss50kw"] isKindOfClass:[NSNull class]]){
        self.puiss50kw = [dictionary[@"puiss50kw"] doubleValue];
    }
	if(![dictionary[@"largeur"] isKindOfClass:[NSNull class]]){
		self.largeur = [dictionary[@"largeur"] doubleValue];
	}
    if(![dictionary[@"type"] isKindOfClass:[NSNull class]]){
        self.type = dictionary[@"type"];
    }
	if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
		self.name = dictionary[@"name"];
	}

	return self;
}

@end
