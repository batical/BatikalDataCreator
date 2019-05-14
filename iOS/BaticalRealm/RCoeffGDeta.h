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

@interface RCoeffGDeta : RLMObject
@property (nonatomic, strong) NSString * uuid;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * type;
@property (nonatomic, assign) double lambda;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end

NS_ASSUME_NONNULL_END
