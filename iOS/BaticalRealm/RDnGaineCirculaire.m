//
//	RDnGaineCirculaire.m
//
//	Create by Sebastien Hecart on 3/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RDnGaineCirculaire.h"

@interface RDnGaineCirculaire ()
@end
@implementation RDnGaineCirculaire
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

	if(![dictionary[@"diam_int"] isKindOfClass:[NSNull class]]){
		self.diam_int = [dictionary[@"diam_int"] doubleValue];
	}

	if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
		self.name = dictionary[@"name"];
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
	dictionary[@"diam_int"] = @(self.diam_int);
	if(self.name != nil){
		dictionary[@"name"] = self.name;
	}
	if(self.uuid != nil){
		dictionary[@"uuid"] = self.uuid;
	}
	return dictionary;

}
@end
