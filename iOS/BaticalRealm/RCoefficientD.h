//
//	RCoefficientD.h
//
//	Create by Sébastien Hecart on 6/7/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RCoefficientD : RLMObject
@property NSString *uuid;
@property (nonatomic, assign) NSInteger coeffD;
@property (nonatomic, strong) NSString * name;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end