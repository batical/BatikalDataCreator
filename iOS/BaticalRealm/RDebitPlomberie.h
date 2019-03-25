//
//	RDebitPlomberie.h
//
//	Create by Sebastien Hecart on 9/12/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RDebitPlomberie : RLMObject

@property (nonatomic, assign) double debit;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) double temperature;
@property (nonatomic, strong) NSString * uuid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
