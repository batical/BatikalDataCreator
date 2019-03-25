//
//	RConductivity.h
//
//	Create by Sebastien Hecart on 21/3/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RPerteChargeUniteCalcul : RLMObject
@property NSString *uuid;
@property (nonatomic, strong) NSString * name;
@property double factor;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end