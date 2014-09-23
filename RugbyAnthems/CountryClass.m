//
//  CountryClass.m
//  RugbyAnthems
//
//  Created by Barry O'Mahony on 26/04/2014.
//  Copyright (c) 2014 Barry O'Mahony. All rights reserved.
//

#import "CountryClass.h"

@implementation CountryClass

-(NSArray *) getCountryFromJSONArray:(NSArray *)jsonArray {
    
    NSMutableArray *countryObjectsArray = [@[] mutableCopy];
    
    for (NSDictionary *dict in jsonArray)   {
        CountryClass *country = [[CountryClass alloc] init];
        country.countryName = dict[@"Title"];
        country.image = dict[@"flag"];
        country.songTitle = dict[@"lyrics"];
        [countryObjectsArray addObject:country];
    }
    
    return countryObjectsArray;
}

@end
