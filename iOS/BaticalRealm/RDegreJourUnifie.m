//
//	RDegreJourUnifie.m
//
//	Create by Sébastien Hecart on 5/7/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "RDegreJourUnifie.h"

@interface RDegreJourUnifie ()
@end
@implementation RDegreJourUnifie


+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"ville", @"average"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"average" : @0,
             @"ville" : @"",};
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
    if(![dictionary[@"ville"] isKindOfClass:[NSNull class]]){
        self.ville = dictionary[@"ville"];
    }
    
    if(![dictionary[@"average"] isKindOfClass:[NSNull class]]){
        self.average = [dictionary[@"average"] doubleValue];
    }
    
    if(![dictionary[@"departement"] isKindOfClass:[NSNull class]]){
        self.departement = [dictionary[@"departement"] integerValue];
    }
    
    if(![dictionary[@"annee"] isKindOfClass:[NSNull class]]){
        self.annee = dictionary[@"annee"];
    }
    
    if(![dictionary[@"m1"] isKindOfClass:[NSNull class]]){
        self.m1 = [dictionary[@"m1"] doubleValue];
    }
    
    if(![dictionary[@"m10"] isKindOfClass:[NSNull class]]){
        self.m10 = [dictionary[@"m10"] doubleValue];
    }
    
    if(![dictionary[@"m11"] isKindOfClass:[NSNull class]]){
        self.m11 = [dictionary[@"m11"] doubleValue];
    }
    
    if(![dictionary[@"m12"] isKindOfClass:[NSNull class]]){
        self.m12 = [dictionary[@"m12"] doubleValue];
    }
    
    if(![dictionary[@"m2"] isKindOfClass:[NSNull class]]){
        self.m2 = [dictionary[@"m2"] doubleValue];
    }
    
    if(![dictionary[@"m3"] isKindOfClass:[NSNull class]]){
        self.m3 = [dictionary[@"m3"] doubleValue];
    }
    
    if(![dictionary[@"m4"] isKindOfClass:[NSNull class]]){
        self.m4 = [dictionary[@"m4"] doubleValue];
    }
    if(![dictionary[@"m7"] isKindOfClass:[NSNull class]]){
        self.m7 = [dictionary[@"m7"] doubleValue];
    }
    if(![dictionary[@"m8"] isKindOfClass:[NSNull class]]){
        self.m8 = [dictionary[@"m8"] doubleValue];
    }
    
    if(![dictionary[@"m5"] isKindOfClass:[NSNull class]]){
        self.m5 = [dictionary[@"m5"] doubleValue];
    }
    
    if(![dictionary[@"m6"] isKindOfClass:[NSNull class]]){
        self.m6 = [dictionary[@"m6"] doubleValue];
    }
    
    if(![dictionary[@"m9"] isKindOfClass:[NSNull class]]){
        self.m9 = [dictionary[@"m9"] doubleValue];
    }
    
    return self;
}




@end
