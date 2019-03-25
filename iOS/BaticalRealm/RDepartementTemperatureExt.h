//
//	RDepartementZone.h
//
//	Create by Sebastien Hecart on 1/4/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>
#import "RTempExtZone.h"
RLM_ARRAY_TYPE(RTempExtZone)


@interface RDepartementTemperatureExt : RLMObject


@property (nonatomic, strong) NSString * departement;
@property (nonatomic, strong) RLMArray<RTempExtZone *><RTempExtZone> * tempratureExts;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
