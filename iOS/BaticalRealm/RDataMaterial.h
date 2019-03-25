//
//	RGaz.h
//
//	Create by Sebastien Hecart on 21/3/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <Realm/Realm.h>

@interface RDataMaterial : RLMObject
@property NSString *uuid;
@property (nonatomic, assign) double densite_fictive;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * material;
@property (nonatomic, assign) double pci_maxi;
@property (nonatomic, assign) double pci_mini;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end
