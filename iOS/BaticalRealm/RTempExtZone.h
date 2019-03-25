//
//	RTempExtZone.h
//
//	Create by Sebastien Hecart on 1/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RTempExtZone : RLMObject

@property (nonatomic, assign) NSInteger altitudeMax;
@property (nonatomic, assign) NSInteger altitudeMin;
@property (nonatomic) double  temperature;
@property (nonatomic, strong) NSString * zoneGeo;
@property (nonatomic, strong) NSString * uuid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end