//
//	RRugositeMaterial.h
//
//	Create by Sebastien Hecart on 3/8/2018
//	Copyright © 2018. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RRugositeMaterial : RLMObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) double rugosite;
@property (nonatomic, strong) NSString * uuid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
