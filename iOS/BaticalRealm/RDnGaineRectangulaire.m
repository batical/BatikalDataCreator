//
//	RDnGaineRectangulaire.m
//
//	Create by Sebastien Hecart on 3/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RDnGaineRectangulaire.h"

@interface RDnGaineRectangulaire ()
@end
@implementation RDnGaineRectangulaire
+ (NSString *)primaryKey{
    return @"uuid";
}
    
+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name", @"diam_int"];
}
    
+ (NSDictionary *) defaultPropertyValues
    {
        return @{@"uuid" : [[NSUUID UUID] UUIDString],
                 @"diam_int" : @0.0,
                 @"name" : @"",
                 @"grand_cote" : @0.0,
                 @"pdc_diam_circ" : @0.0,
                 @"petite_cote" : @0.0,
                 @"section" : @0.0,};
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

	if(![dictionary[@"air"] isKindOfClass:[NSNull class]]){
		self.air = [dictionary[@"air"] floatValue];
	}
    if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
        self.name = dictionary[@"name"];
    }
	if(![dictionary[@"diam_int"] isKindOfClass:[NSNull class]]){
		self.diam_int = [dictionary[@"diam_int"] doubleValue];
	}

	if(![dictionary[@"grand_cote"] isKindOfClass:[NSNull class]]){
        self.grand_cote = [dictionary[@"grand_cote"] doubleValue];
	}

	if(![dictionary[@"pdc_diam_circ"] isKindOfClass:[NSNull class]]){
		self.pdc_diam_circ = [dictionary[@"pdc_diam_circ"] doubleValue];
	}

	if(![dictionary[@"petite_cote"] isKindOfClass:[NSNull class]]){
		self.petite_cote = [dictionary[@"petite_cote"] doubleValue];
	}

	if(![dictionary[@"section"] isKindOfClass:[NSNull class]]){
		self.section = [dictionary[@"section"] doubleValue];
	}

	if(![dictionary[@"uuid"] isKindOfClass:[NSNull class]]){
		self.uuid = dictionary[@"uuid"];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[@"air"] = @(self.air);
	dictionary[@"diam_int"] = @(self.diam_int);
	dictionary[@"grand_cote"] = @(self.grand_cote);
	dictionary[@"pdc_diam_circ"] = @(self.pdc_diam_circ);
	dictionary[@"petite_cote"] = @(self.petite_cote);
	dictionary[@"section"] = @(self.section);
	if(self.uuid != nil){
		dictionary[@"uuid"] = self.uuid;
	}
    if(self.name != nil){
        dictionary[@"name"] = self.name;
    }
	return dictionary;

}
    
    @end

