//
//  RCoeffGSimplifie.h
//  BaticalRealm
//
//  Created by fahbe on 12/05/2019.
//  Copyright © 2019 Sébastien Hecart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
NS_ASSUME_NONNULL_BEGIN

@interface RCoeffGSimplifie : RLMObject
@property (nonatomic, strong) NSString * uuid;
@property (nonatomic, strong) NSString * murs;
@property (nonatomic, strong) NSString * vitrage;
@property (nonatomic, strong) NSString * plafond;
@property (nonatomic, strong) NSString * plancher;
@property (nonatomic, strong) NSString * config;
@property (nonatomic, assign) double calculuuid;
@property (nonatomic, assign) double g;


-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end

NS_ASSUME_NONNULL_END
