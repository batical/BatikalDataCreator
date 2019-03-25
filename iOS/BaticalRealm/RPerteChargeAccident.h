//
//	RPerteChargeAccident.h
//
//	Create by Sebastien Hecart on 31/3/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RPerteChargeAccident : RLMObject

@property NSString *uuid;
@property (nonatomic, assign) double dzeta;
@property (nonatomic, strong) NSString * name;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end