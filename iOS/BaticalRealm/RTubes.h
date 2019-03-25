//
//	RTubes.h
//
//	Create by Sebastien Hecart on 19/3/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RTubes : RLMObject
@property NSString *uuid;
@property (nonatomic, assign) double debitH;
@property (nonatomic, assign) double debitS;
@property (nonatomic, assign) double diamExt;
@property (nonatomic, assign) double diamInt;
@property (nonatomic, assign) double epaisseur;
@property (nonatomic, strong) NSString * material;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) double rugositeMax;
@property (nonatomic, assign) double rugositeMin;
@property (nonatomic, assign) double sectionM;
@property (nonatomic, assign) double sectionMm;
@property (nonatomic, strong) NSString * type;
@property (nonatomic, assign) double vmax;
@property (nonatomic, assign) double conductivity;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end