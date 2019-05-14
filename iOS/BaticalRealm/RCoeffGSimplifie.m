//
//  RCoeffGSimplifie.m
//  BaticalRealm
//
//  Created by fahbe on 12/05/2019.
//  Copyright © 2019 Sébastien Hecart. All rights reserved.
//
//@property (nonatomic, strong) NSString * uuid;
//@property (nonatomic, strong) NSString * murs;
//@property (nonatomic, strong) NSString * vitrage;
//@property (nonatomic, strong) NSString * plafond;
//@property (nonatomic, strong) NSString * plancher;
//@property (nonatomic, strong) NSString * config;
//@property (nonatomic, assign) double calculuuid;
//@property (nonatomic, assign) double g;

#import "RCoeffGSimplifie.h"

@implementation RCoeffGSimplifie

+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"murs", @"vitrage" , @"plafond",@"plancher", @"config"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"murs" : @"", @"vitrage": @"" , @"plafond": @"",@"plancher": @"", @"config": @""};
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
    
    if(![dictionary[@"g"] isKindOfClass:[NSNull class]]){
        self.g = [dictionary[@"g"] doubleValue];
    }
    
    if(![dictionary[@"calculuuid"] isKindOfClass:[NSNull class]]){
        self.calculuuid = [dictionary[@"calculuuid"] doubleValue];
    }
    
    
    if(![dictionary[@"uuid"] isKindOfClass:[NSNull class]]){
        self.uuid = dictionary[@"uuid"];
    }
    
    if(![dictionary[@"murs"] isKindOfClass:[NSNull class]]){
        self.murs = dictionary[@"murs"];
    }
    
    if(![dictionary[@"vitrage"] isKindOfClass:[NSNull class]]){
        self.vitrage = dictionary[@"vitrage"];
    }
    
    if(![dictionary[@"plafond"] isKindOfClass:[NSNull class]]){
        self.plafond = dictionary[@"plafond"];
    }
    
    if(![dictionary[@"plancher"] isKindOfClass:[NSNull class]]){
        self.plancher = dictionary[@"plancher"];
    }
    
    if(![dictionary[@"config"] isKindOfClass:[NSNull class]]){
        self.config = dictionary[@"config"];
    }
    
    return self;
}

@end
