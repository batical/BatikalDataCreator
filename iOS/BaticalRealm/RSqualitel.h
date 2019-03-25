//
//	RSqualitel.h
//
//	Create by Sebastien Hecart on 8/12/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport


#import <Realm/Realm.h>


@interface RSqualitel : RLMObject

@property (nonatomic, assign) double max;
@property (nonatomic, assign) double min;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) double s1;
@property (nonatomic, assign) double s2;
@property (nonatomic, assign) double s3;
@property (nonatomic, strong) NSString * uuid;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
