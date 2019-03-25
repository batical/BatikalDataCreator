//
//	RDegreJourUnifie.h
//
//	Create by Sébastien Hecart on 5/7/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RDegreJourUnifie : RLMObject
@property NSString *uuid;
@property (nonatomic, assign) double m1;
@property (nonatomic, assign) double m10;
@property (nonatomic, assign) double m11;
@property (nonatomic, assign) double m12;
@property (nonatomic, assign) double m2;
@property (nonatomic, assign) double m3;
@property (nonatomic, assign) double m4;
@property (nonatomic, assign) double m5;
@property (nonatomic, assign) double m6;
@property (nonatomic, assign) double m9;
@property (nonatomic, assign) double m7;
@property (nonatomic, assign) double m8;
@property (nonatomic, strong) NSString * ville;
@property (nonatomic, assign) double average;
@property (nonatomic, assign) NSInteger departement;
@property (nonatomic, assign) NSString * annee;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
