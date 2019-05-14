//
//  RVitrage.m
//  BaticalRealm
//
//  Created by fahbe on 14/05/2019.
//  Copyright © 2019 Sébastien Hecart. All rights reserved.
//

#import "RVitrage.h"

@implementation RVitrage

+ (NSString *)primaryKey{
    return @"uuid";
}

+ (NSArray *)requiredProperties {
    return @[@"uuid",@"name",@"menuiserie", @"u" , @"facteur_encadrement",@"facteur_solaire"];
}

+ (NSDictionary *) defaultPropertyValues
{
    return @{@"uuid" : [[NSUUID UUID] UUIDString],
             @"name" : @"",@"menuiserie" : @"", @"u" : @0 , @"facteur_encadrement" : @0,@"facteur_solaire" : @0};
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
    if(![dictionary[@"name"] isKindOfClass:[NSNull class]]){
        self.name = dictionary[@"name"];
    }
    if(![dictionary[@"menuiserie"] isKindOfClass:[NSNull class]]){
        self.menuiserie = dictionary[@"menuiserie"];
    }
    if(![dictionary[@"u"] isKindOfClass:[NSNull class]]){
        self.u = [dictionary[@"u"] doubleValue];
    }
    if(![dictionary[@"facteur_encadrement"] isKindOfClass:[NSNull class]]){
        self.facteur_encadrement = [dictionary[@"facteur_encadrement"] doubleValue];
    }
    if(![dictionary[@"facteur_solaire"] isKindOfClass:[NSNull class]]){
        self.facteur_solaire = [dictionary[@"facteur_solaire"] doubleValue];
    }

    return self;
}

@end

