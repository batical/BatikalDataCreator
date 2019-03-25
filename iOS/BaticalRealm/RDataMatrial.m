//
//	RGaz.m
//
//	Create by Sebastien Hecart on 21/3/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RDataMaterial.h"

@interface RDataMaterial ()
@end
@implementation RDataMaterial


+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name",@"densite_fictive" ,
             @"pci_maxi",
             @"pci_mini",
             @"material"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"densite_fictive" : @0.0,
             @"name" : @"",
             @"pci_maxi" : @0.0,
             @"pci_mini" : @0.0,
             @"material" : @""};
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
	if(![dictionary[@"densite_fictive"] isKindOfClass:[NSNull class]]){
		self.densite_fictive = [dictionary[@"densite_fictive"] doubleValue];
	}

	if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
		self.name = dictionary[@"name"];
	}

	if(![dictionary[@"pci_maxi"] isKindOfClass:[NSNull class]]){
		self.pci_maxi = [dictionary[@"pci_maxi"] doubleValue];
	}

	if(![dictionary[@"pci_mini"] isKindOfClass:[NSNull class]]){
		self.pci_mini = [dictionary[@"pci_mini"] doubleValue];
	}
    
    if(![dictionary[@"material"] isKindOfClass:[NSNull class]]){
        self.material = dictionary[@"material"];
    }
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[@"densite_fictive"] = @(self.densite_fictive);
	if(self.name != nil){
		dictionary[@"name"] = self.name;
	}
	dictionary[@"pci_maxi"] = @(self.pci_maxi);
	dictionary[@"pci_mini"] = @(self.pci_mini);
    if(self.uuid != nil){
        dictionary[@"uuid"] = self.uuid;
    }
    if(self.name != nil){
        dictionary[@"material"] = self.material;
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
	[aCoder encodeObject:@(self.densite_fictive) forKey:@"densite_fictive"];
    if(self.name != nil){
		[aCoder encodeObject:self.name forKey:@"name"];
	}
    if(self.material != nil){
        [aCoder encodeObject:self.material forKey:@"material"];
    }
	[aCoder encodeObject:@(self.pci_maxi) forKey:@"pci_maxi"];
    [aCoder encodeObject:@(self.pci_mini) forKey:@"pci_mini"];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.densite_fictive = [[aDecoder decodeObjectForKey:@"densite_fictive"] doubleValue];
	self.name = [aDecoder decodeObjectForKey:@"name"];
    self.material = [aDecoder decodeObjectForKey:@"material"];
	self.pci_maxi = [[aDecoder decodeObjectForKey:@"pci_maxi"] doubleValue];
	self.pci_mini = [[aDecoder decodeObjectForKey:@"pci_mini"] doubleValue];
	return self;

}
@end
