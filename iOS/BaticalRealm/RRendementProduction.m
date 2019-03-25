//
//	RRendementProduction.m
//
//	Create by Sebastien Hecart on 14/2/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RRendementProduction.h"



@interface RRendementProduction ()
@end
@implementation RRendementProduction


+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name", @"rendementProduction",@"rendementpuissance",@"type",@"prix",@"carbone",@"color"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"rendementProduction" : @0.0,
             @"rendementpuissance" : @0.0,
             @"type" : @"",
             @"prix" : @0.0,
             @"carbone" : @0.0,
             @"name" : @"",
             @"color" : @"",
        };
}




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
    if(![dictionary[@"uuid"] isKindOfClass:[NSNull class]]){
        self.uuid = dictionary[@"uuid"];
    }
    if(![dictionary[@"rendementProduction"] isKindOfClass:[NSNull class]]){
        self.rendementProduction = [dictionary[@"rendementProduction"] doubleValue];
    }
    if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
        self.name = dictionary[@"name"];
    }

    if(![dictionary[@"rendementpuissance"] isKindOfClass:[NSNull class]]){
        self.rendementpuissance = [dictionary[@"rendementpuissance"] doubleValue];
    }
    if(![dictionary[@"type"] isKindOfClass:[NSNull class]]){
        self.type = dictionary[@"type"];
    }
    if(![dictionary[@"prix"] isKindOfClass:[NSNull class]]){
        self.prix = [dictionary[@"prix"] doubleValue];
    }
    if(![dictionary[@"carbone"] isKindOfClass:[NSNull class]]){
        self.carbone = [dictionary[@"carbone"] doubleValue];
    }
    if(![dictionary[@"couleur"] isKindOfClass:[NSNull class]]){
        self.color = dictionary[@"couleur"];
    }
	
	return self;
}



@end
