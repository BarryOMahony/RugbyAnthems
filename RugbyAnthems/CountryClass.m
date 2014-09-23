//
//  CountryClass.m
//  RugbyAnthems
//
//  Created by Barry O'Mahony on 26/04/2014.
//  Copyright (c) 2014 Barry O'Mahony. All rights reserved.
//

#import "CountryClass.h"



@implementation CountryClass

-(NSArray *) getCountries:(NSArray *)countries {
    
    for (NSDictionary *dict in countries)
    
        
{
        CountryClass *country = [[CountryClass alloc] init];
        
        //country.name = dict[@"Ireland"];
        //track.duration = dict[@"duration"];
        //track.trackID = dict[@"trackID"];
        //track.image = dict[@"image"];
        //track.trackFile = dict[@"track"];
        //track.objectID = dict[@"objectId"];
        
    }
    
    return countryObjectsArray;
}
    
    NSDictionary *Ireland = @{ @"flag" : @"FlagIreland.png", @"Title" : @"Ireland", @"lyrics" : @"Australians all let us rejoice, For we are young and free, We’ve golden soil and wealth for toil, Our home is girt by sea, Our land abounds in nature’s gifts, Of beauty rich and rare, In history’s page, let every stage, Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair. Beneath our radiant Southern Cross, We’ll toil with hearts and hands, To make this Commonwealth of ours, Renowned of all the lands, For those who’ve come across the seas, We’ve boundless plains to share, With courage let us all combine, To Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair."};
    
    NSDictionary *NewZealand = @{ @"flag" : @"FlagNewZealand", @"Title" : @"NewZealand", @"lyrics" : @"Australians all let us rejoice, For we are young and free, We’ve golden soil and wealth for toil, Our home is girt by sea, Our land abounds in nature’s gifts, Of beauty rich and rare, In history’s page, let every stage, Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair. Beneath our radiant Southern Cross, We’ll toil with hearts and hands, To make this Commonwealth of ours, Renowned of all the lands, For those who’ve come across the seas, We’ve boundless plains to share, With courage let us all combine, To Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair."};
    
    NSDictionary *England = @{ @"flag" : @"FlagEngland", @"Title" : @"England", @"lyrics" : @"Australians all let us rejoice, For we are young and free, We’ve golden soil and wealth for toil, Our home is girt by sea, Our land abounds in nature’s gifts, Of beauty rich and rare, In history’s page, let every stage, Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair. Beneath our radiant Southern Cross, We’ll toil with hearts and hands, To make this Commonwealth of ours, Renowned of all the lands, For those who’ve come across the seas, We’ve boundless plains to share, With courage let us all combine, To Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair."};
    
    NSDictionary *France = @{ @"flag" : @"FlagFrance", @"Title" : @"France", @"lyrics" : @"Australians all let us rejoice, For we are young and free, We’ve golden soil and wealth for toil, Our home is girt by sea, Our land abounds in nature’s gifts, Of beauty rich and rare, In history’s page, let every stage, Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair. Beneath our radiant Southern Cross, We’ll toil with hearts and hands, To make this Commonwealth of ours, Renowned of all the lands, For those who’ve come across the seas, We’ve boundless plains to share, With courage let us all combine, To Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair."};
    
    NSDictionary *Australia = @{ @"flag" : @"FlagAustralia", @"Title" : @"Australia", @"lyrics" : @"Australians all let us rejoice, For we are young and free, We’ve golden soil and wealth for toil, Our home is girt by sea, Our land abounds in nature’s gifts, Of beauty rich and rare, In history’s page, let every stage, Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair. Beneath our radiant Southern Cross, We’ll toil with hearts and hands, To make this Commonwealth of ours, Renowned of all the lands, For those who’ve come across the seas, We’ve boundless plains to share, With courage let us all combine, To Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair."};
    
    self.countries = @[ Ireland, NewZealand, England, France, Australia ];
    




@end
