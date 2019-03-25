//
//	RCoefficientD.h
//
//	Create by Sébastien Hecart on 6/7/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RCoefficientMajorationBatiment : RLMObject
@property NSString *uuid;
@property (nonatomic, assign) double coeffMajoration;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * content;
@property (nonatomic, assign) double tempsDeuxPointes;
@property (nonatomic, assign) double litresJour;
@property (nonatomic, assign) double periodeHorairePointe;
@property (nonatomic, assign) double phdp;
@property (nonatomic, assign) double simultanite;



-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
