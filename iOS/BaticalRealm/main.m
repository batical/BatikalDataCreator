//
//  main.m
//  BaticalRealm
//
//  Created by Sébastien Hecart on 19/03/2016.
//  Copyright © 2016 Sébastien Hecart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
#import "RTubes.h"
#import "RDataMaterial.h"
#import "RConductivity.h"
#import "RMasseVolumiqueViscosite.h"
#import "RPerteChargeAccident.h"
#import "RTempExtZone.h"
#import "RDepartementTemperatureExt.h"
#import "RPerteChargeUniteCalcul.h"
#import "RRegimeDimensionnement.h"
#import "RTypeRadiateur.h"
#import "RDegreJourUnifie.h"
#import "RCoefficientD.h"
#import "RCoefficientG.h"
#import "RCoefficientMajorationBatiment.h"
#import "RRendementProduction.h"
#import "RLogementCompositionECS.h"
#import "RAdoucisseurDiametreDebit.h"
#import "RCapaResine.h"
#import "RCompostionFoyerStandard.h"
#import "RLogementCompoEHPAD.h"
#import "RSqualitel.h"
#import "RDebitPlomberie.h"
#import "RCanalisationDebitMinMax.h"
#import "RIsolantECS.h"
#import "RDnGaineCirculaire.h"
#import "RDnGaineRectangulaire.h"
#import "RRugositeMaterial.h"
#import "RCoeffGSimplifie.h"
#import "RVitrage.h"
#import "RCoeffGDeta.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSError *error =  nil;
        NSString *dataPath = [[NSBundle mainBundle] pathForResource:@"TUBES" ofType:@"json"];
        NSArray* etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        
        NSString *documentsDirectory = [paths objectAtIndex:0];
        NSString *destinationFile = @"/Users/sebastienhecart/batikal/BatiKalRn-v5.realm";
        NSString *iosRN = @"/Users/sebastienhecart/batikal/Batikal/ios/BatiKalRn-v5.realm";
        NSString *androidRN = @"/Users/sebastienhecart/batikal/Batikal/android/app/src/main/assets/BatiKalRn-v5.realm";
        
        //NSString *reactNativedestinationFile = @"/Users/shecart/Documents/personel/BaticalReactNative/DataModel/RealmObject/Batical.realm";
        NSString *yourArtPath = [documentsDirectory stringByAppendingPathComponent:@"Batical.realm"];
        NSFileManager *fileManager = [NSFileManager defaultManager];
        BOOL success = [fileManager removeItemAtPath:yourArtPath error:&error];
        if (success) {
            NSLog(@"Successfully cleaned up files in user specified directory.");
        }
        else
        {
            NSLog(@"Could not delete file -:%@ ",[error localizedDescription]);
        }
        
        RLMRealmConfiguration *config = [RLMRealmConfiguration defaultConfiguration];
        // Set the new schema version. This must be greater than the previously used
        // version (if you've never set a schema version before, the version is 0).
        config.schemaVersion = 1;
        [RLMRealmConfiguration setDefaultConfiguration:config];
        
        RLMRealm *realm = [RLMRealm realmWithURL:[NSURL URLWithString:yourArtPath]];
        //realmWithPath:yourArtPath] ;
        [realm beginWriteTransaction];
        
        // Add Person objects in realm for every person dictionary in JSON array
        for (NSDictionary *tubeDict in etbs) {
            RTubes *rTube = [[RTubes alloc] initWithDictionary:tubeDict];
            
            [realm addObject:rTube];
        }
        [realm commitWriteTransaction];
        
        
        
        /** GAZ **/
        /** GAZ **/
        /** GAZ **/
        /** GAZ **/
        /** GAZ **/
        dataPath = [[NSBundle mainBundle] pathForResource:@"DataMaterial" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        // Add Person objects in realm for every person dictionary in JSON array
        for (NSDictionary *gazDict in etbs) {
            RDataMaterial *rGaz = [[RDataMaterial alloc] initWithDictionary:gazDict];
            
            [realm addObject:rGaz];
        }
        [realm commitWriteTransaction];
        
        
        /*********************************************************************************
         *********************************************************************************
         *********************************Conductivity ***********************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"Conductivite" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        // Add Person objects in realm for every person dictionary in JSON array
        for (NSDictionary *conDict in etbs) {
            RConductivity *rcon= [[RConductivity alloc] initWithDictionary:conDict];
            
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        
        /*********************************************************************************
         *********************************************************************************
         *********************************Perte charge accident **************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"PerteChargeAccident" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        // Add Person objects in realm for every person dictionary in JSON array
        for (NSDictionary *conDict in etbs) {
            RPerteChargeAccident *rcon= [[RPerteChargeAccident alloc] initWithDictionary:conDict];
            
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* masse volumique *********************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"MasseVolumiqueViscosite" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        // Add Person objects in realm for every person dictionary in JSON array
        for (NSDictionary *conDict in etbs) {
            RMasseVolumiqueViscosite *rcon= [[RMasseVolumiqueViscosite alloc] initWithDictionary:conDict];
            
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* tempext*********************************
         ********************************************************************************/
        //not the cleanest way but got issue with float and double
        NSMutableDictionary<NSString *, NSMutableArray<RTempExtZone *> *> *tempzoneGeo = [NSMutableDictionary dictionary];
        
        
        dataPath = [[NSBundle mainBundle] pathForResource:@"TemperaturBaseExtZone" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        // Add Person objects in realm for every person dictionary in JSON array
        for (NSDictionary *conDict in etbs) {
            RTempExtZone *rcon= [[RTempExtZone alloc] initWithDictionary:conDict];
            NSMutableArray<RTempExtZone *> *arrayt = [tempzoneGeo objectForKey:rcon.zoneGeo];
            if (arrayt == nil){
                arrayt = [NSMutableArray array];
            }
            [arrayt addObject:rcon];
            [tempzoneGeo setValue:arrayt forKey:rcon.zoneGeo];
            
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* Departement zoneGeo*********************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"DepartementZone" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        // Add Person objects in realm for every person dictionary in JSON array
        for (NSDictionary *conDict in etbs) {
            RDepartementTemperatureExt *rcon= [[RDepartementTemperatureExt alloc] initWithDictionary:conDict];
            //find temprrature
            if(conDict[@"zones"] != nil && ![conDict[@"zones"] isKindOfClass:[NSNull class]]){
                NSArray * zoneGeosDictionaries = conDict[@"zones"];
                for(NSDictionary * zoneGeosDictionary in zoneGeosDictionaries){
                    if(![zoneGeosDictionary[@"zoneGeo"] isKindOfClass:[NSNull class]]){
                        [rcon.tempratureExts addObjects:[tempzoneGeo objectForKey:zoneGeosDictionary[@"zoneGeo"]]];
                    }

                }
            }

            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* Rendement ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"RendementProduction" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RRendementProduction *rcon= [[RRendementProduction alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* PerteChargeUnite ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"PerteChargeUnite" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RPerteChargeUniteCalcul *rcon= [[RPerteChargeUniteCalcul alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* TypeRadiateur ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"TypeRadiateur" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RTypeRadiateur *rcon= [[RTypeRadiateur alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* RegimeDimensionnement ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"RegimeDimensionnement" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RRegimeDimensionnement *rcon= [[RRegimeDimensionnement alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
      
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* DJU ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"DJU" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            
            RDegreJourUnifie *rcon= [[RDegreJourUnifie alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
//        /*********************************************************************************
//         *********************************************************************************
//         ********************************* DJU2017CH ******************************
//         ********************************************************************************/
//        dataPath = [[NSBundle mainBundle] pathForResource:@"DJU2017CH" ofType:@"json"];
//        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
//       // [realm beginWriteTransaction];
//
//        for (NSDictionary *conDict in etbs) {
//            RDegreJourUnifie *rcon= [[RDegreJourUnifie alloc] initWithDictionary:conDict];
//            [realm addObject:rcon];
//        }
//        [realm commitWriteTransaction];

        

        /*********************************************************************************
         *********************************************************************************
         ********************************* RCoefficientD ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"CoeffD" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RCoefficientD *rcon= [[RCoefficientD alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* RCoefficientG ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"CoeffG" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RCoefficientG *rcon= [[RCoefficientG alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* RCoefficientMajoration ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"CoefficientMajorationBatiment" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RCoefficientMajorationBatiment *rcon= [[RCoefficientMajorationBatiment alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* RLogementCompositionECS ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"LogementCompositionECS" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RLogementCompositionECS *rcon= [[RLogementCompositionECS alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* RAdoucisseurDiametreDebit ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"AdoucisseurDiametreDebit" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RAdoucisseurDiametreDebit *rcon= [[RAdoucisseurDiametreDebit alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* RCapaResine ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"CapaciteResine" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RCapaResine *rcon= [[RCapaResine alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* RCompostionFoyerStandard ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"CompositionFoyerStandard" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RCompostionFoyerStandard *rcon= [[RCompostionFoyerStandard alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];

        
        /*********************************************************************************
         *********************************************************************************
         ********************************* RLogementCompoEHPAD ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"EHPADcompositionECS" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RLogementCompoEHPAD *rcon= [[RLogementCompoEHPAD alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];

        
        /*********************************************************************************
         *********************************************************************************
         ********************************* RCapaResine ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"Squalitel" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RSqualitel *rcon= [[RSqualitel alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];

        /*********************************************************************************
         *********************************************************************************
         ********************************* RDEbtPlo ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"DebitPlomberie" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RDebitPlomberie *rcon= [[RDebitPlomberie alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* CanalsatinDebitMinMax ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"CanalsationDebitMinMax" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RCanalisationDebitMinMax *rcon= [[RCanalisationDebitMinMax alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        /*********************************************************************************
         *********************************************************************************
         ********************************* #import "RIsolantECS.h" ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"IsolantECS" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RIsolantECS *rcon= [[RIsolantECS alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        /*********************************************************************************
         *********************************************************************************
         *********************************#import "RDnGaineCirculaire.h" ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"DnGaineEurovent_Circulaire" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RDnGaineCirculaire *rcon= [[RDnGaineCirculaire alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
         /*********************************************************************************
         *********************************************************************************
          *********************************#import "RDnGaineRectangulaire.h" ******************************
          ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"DnGaineEurovent_CarrreRctangulaire" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RDnGaineRectangulaire *rcon= [[RDnGaineRectangulaire alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
         /*********************************************************************************
         *********************************************************************************
          *********************************#import "RRugositeMaterial.h" ******************************
          ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"Rugositeboussicaud20" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RRugositeMaterial *rcon= [[RRugositeMaterial alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        /*********************************************************************************
         *********************************************************************************
         *********************************#import "RCoeffGDeta.h" ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"CoeffGDeta" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RCoeffGDeta *rcon= [[RCoeffGDeta alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        /*********************************************************************************
         *********************************************************************************
         *********************************#import "RVitrage" ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"Vitrage" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RVitrage *rcon= [[RVitrage alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        
        
        /*********************************************************************************
         *********************************************************************************
         *********************************#import "RCOEFFGSIMPLIFIE" ******************************
         ********************************************************************************/
        dataPath = [[NSBundle mainBundle] pathForResource:@"CoeffGSimplifie" ofType:@"json"];
        etbs = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath] options:kNilOptions error:&error];
        [realm beginWriteTransaction];
        
        for (NSDictionary *conDict in etbs) {
            RCoeffGSimplifie *rcon= [[RCoeffGSimplifie alloc] initWithDictionary:conDict];
            [realm addObject:rcon];
        }
        [realm commitWriteTransaction];
        //delete destination file
        success = [fileManager removeItemAtPath:destinationFile error:&error];
        if (success) {
            NSLog(@"Successfully cleaned up files batical project");
        }
        else
        {
            NSLog(@"Could not delete file -:%@ ",[error localizedDescription]);
        }
        //create a compated encrypted realm
        NSString *str = @"fuckingpassword";
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:str];
        //NSString *thatStr = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        //[realm writeCopyToURL:[NSURL URLWithString:destinationFile] encryptionKey:data error:&error];
        success =  [[NSFileManager defaultManager]copyItemAtPath:yourArtPath toPath:destinationFile error:&error];
        if (success) {
            NSLog(@"Copy successfull in batical project");
        }
        else
        {
            NSLog(@"Could not copy file -:%@ ",[error localizedDescription]);
        }
        success = [fileManager removeItemAtPath:iosRN error:&error];
        success = [[NSFileManager defaultManager]copyItemAtPath:yourArtPath toPath:iosRN error:&error];
                if (success) {
            NSLog(@"Copy successfull in dropbox");
        }
        else
        {
            NSLog(@"Could not copy file -:%@ ",[error localizedDescription]);
        }
        success = [fileManager removeItemAtPath:androidRN error:&error];
        success = [[NSFileManager defaultManager]copyItemAtPath:yourArtPath toPath:androidRN error:&error];
        if (success) {
            NSLog(@"Copy successfull in dropbox");
        }
        else
        {
            NSLog(@"Could not copy file -:%@ ",[error localizedDescription]);
        }


    }
    return 0;
}
