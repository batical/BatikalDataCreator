//
//	RAdoucisseurDiametreDebit.h
//
//	Create by Sebastien Hecart on 3/12/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RAdoucisseurDiametreDebit : RLMObject

@property (nonatomic, assign) double debitmax;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * uuid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end
