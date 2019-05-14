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

#import "RCoeffGDeta.h"

@implementation RCoeffGDeta

+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name", @"lambda" , @"type"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"name" : @"", @"type": @"" , @"lambda": @0};
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
    
    if(![dictionary[@"lambda"] isKindOfClass:[NSNull class]]){
        self.lambda = [dictionary[@"lambda"] doubleValue];
    }
    
    if(![dictionary[@"type"] isKindOfClass:[NSNull class]]){
        self.type = dictionary[@"type"];
    }
    
    if(![dictionary[@"uuid"] isKindOfClass:[NSNull class]]){
        self.uuid = dictionary[@"uuid"];
    }
    
    if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
        self.name = dictionary[@"name"];
    }
    
 
    return self;
}

@end
