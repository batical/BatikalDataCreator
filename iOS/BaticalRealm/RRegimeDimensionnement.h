//
//	RRegimeDimensionnement.h
//
//	Create by Sébastien Hecart on 19/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RRegimeDimensionnement : RLMObject

@property (nonatomic, assign) double coefficient_reduction;
@property (nonatomic, assign) double dt_moyenne;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * uuid;
@property (nonatomic, assign) double temperature_moyenne;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end