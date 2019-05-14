//
//  RVitrage.h
//  BaticalRealm
//
//  Created by fahbe on 14/05/2019.
//  Copyright © 2019 Sébastien Hecart. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Realm/Realm.h>
NS_ASSUME_NONNULL_BEGIN

@interface RVitrage : RLMObject
@property (nonatomic, strong) NSString * uuid;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * menuiserie;
@property (nonatomic, assign) double u;
@property (nonatomic, assign) double facteur_encadrement;
@property (nonatomic, assign) double facteur_solaire;
-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end

NS_ASSUME_NONNULL_END
