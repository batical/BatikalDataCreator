//
//	RCapaResine.h
//
//	Create by Sebastien Hecart on 3/12/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RCapaResine : RLMObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) double saltcapacity;
@property (nonatomic, assign) double saltquantity;
@property (nonatomic, strong) NSString * uuid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
