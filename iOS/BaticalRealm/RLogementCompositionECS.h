//
//	LogementCompositionECS.h
//
//	Create by Sebastien Hecart on 3/12/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RLogementCompositionECS : RLMObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) double nb_baignoire;
@property (nonatomic, assign) double nb_douche;
@property (nonatomic, assign) double nb_evier;
@property (nonatomic, assign) double nb_vasque;
@property (nonatomic, assign) double coeffPrive;
@property (nonatomic, assign) double coeffSocial;
@property (nonatomic, assign) double prive40;
@property (nonatomic, assign) double social40;
@property (nonatomic, assign) double coeffQualitel;
@property (nonatomic, strong) NSString * uuid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
