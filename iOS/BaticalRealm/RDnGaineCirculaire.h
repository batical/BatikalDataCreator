//
//	RDnGaineCirculaire.h
//
//	Create by Sebastien Hecart on 3/8/2018
//	Copyright © 2018. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RDnGaineCirculaire : RLMObject

@property (nonatomic, assign) double diam_int;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * uuid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
