//
//	RIsolantECS.h
//
//	Create by Sebastien Hecart on 21/12/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RIsolantECS : RLMObject

@property (nonatomic, assign) double lambda;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * uuid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end
