//
//	RRendementProduction.h
//
//	Create by Sebastien Hecart on 14/2/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport


#import <Realm/Realm.h>

@interface RRendementProduction : RLMObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) double rendementProduction;
@property (nonatomic, strong) NSString * uuid;
@property (nonatomic, assign) double rendementpuissance;
@property (nonatomic, assign) NSString * type;
@property (nonatomic, assign) double prix;
@property (nonatomic, assign) double carbone;
@property (nonatomic, assign) NSString * color;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end
