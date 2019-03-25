//
//	RSqualitel.m
//
//	Create by Sebastien Hecart on 8/12/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RSqualitel.h"

NSString *const kRSqualitelMaxi = @"max";
NSString *const kRSqualitelMin = @"min";
NSString *const kRSqualitelName = @"name";
NSString *const kRSqualitelS1 = @"s1";
NSString *const kRSqualitelS2 = @"s2";
NSString *const kRSqualitelS3 = @"s3";
NSString *const kRSqualitelUuid = @"uuid";

@interface RSqualitel ()
@end
@implementation RSqualitel
+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name", @"max" ,
             @"min" ,
             @"s1" ,
             @"s2" ,
             @"s3" ];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"max" : @0.0,
             @"min" : @0.0,
             @"s1" : @0.0,
             @"s2" : @0.0,
             @"s3" : @0.0,
             @"name" : @""};
}




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kRSqualitelMaxi] isKindOfClass:[NSNull class]]){
		self.max = [dictionary[kRSqualitelMaxi] doubleValue];
	}

	if(![dictionary[kRSqualitelMin] isKindOfClass:[NSNull class]]){
		self.min = [dictionary[kRSqualitelMin] doubleValue];
	}

	if(![dictionary[kRSqualitelName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kRSqualitelName];
	}	
	if(![dictionary[kRSqualitelS1] isKindOfClass:[NSNull class]]){
		self.s1 = [dictionary[kRSqualitelS1] doubleValue];
	}

	if(![dictionary[kRSqualitelS2] isKindOfClass:[NSNull class]]){
		self.s2 = [dictionary[kRSqualitelS2] doubleValue];
	}

	if(![dictionary[kRSqualitelS3] isKindOfClass:[NSNull class]]){
		self.s3 = [dictionary[kRSqualitelS3] doubleValue];
	}

	if(![dictionary[kRSqualitelUuid] isKindOfClass:[NSNull class]]){
		self.uuid = dictionary[kRSqualitelUuid];
	}	
	return self;
}


@end
