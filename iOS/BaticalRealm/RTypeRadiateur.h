//
//	RTypeRadiateur.h
//
//	Create by Sébastien Hecart on 19/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RTypeRadiateur : RLMObject

@property (nonatomic, assign) double expn;
@property (nonatomic, assign) double coeffkm;
@property (nonatomic, assign) double puiss50kw;
@property (nonatomic, assign) double largeur;
@property (nonatomic, assign) double add;
@property (nonatomic, assign) double factor;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * uuid;
@property (nonatomic, strong) NSString * type;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
