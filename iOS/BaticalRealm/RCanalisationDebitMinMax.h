//
//	CanalsatinDebitMinMax.h
//
//	Create by Sebastien Hecart on 13/12/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RCanalisationDebitMinMax : RLMObject

@property (nonatomic, assign) double debitMax;
@property (nonatomic, assign) double debitMin;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * uuid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end
