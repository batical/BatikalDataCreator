//
//	RMasseVolumiqueViscosite.h
//
//	Create by Sebastien Hecart on 4/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RMasseVolumiqueViscosite : RLMObject

@property NSString *uuid;
@property (nonatomic, assign) double chaleurMassiqueKcalkgK;
@property (nonatomic, assign) double chaleurMassiqueKjkgK;
@property (nonatomic, assign) double chaleurVolumiqueKjm3;
@property (nonatomic, assign) double chaleurSensibleKcalkg;
@property (nonatomic, assign) double chaleurSensibleKjkg;
@property (nonatomic, assign) double masseVolumique;
@property (nonatomic, assign) double pressionVavpeurSaturantePa;
@property (nonatomic, assign) double temperature;
@property (nonatomic, assign) double viscositeKgms;
@property (nonatomic, strong) NSString * name;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end