//
//	RCompostionFoyerStandard.h
//
//	Create by Sebastien Hecart on 8/12/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RCompostionFoyerStandard : RLMObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) double nbStandard;
@property (nonatomic, strong) NSString * uuid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;


@end
