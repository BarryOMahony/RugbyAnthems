//
//  CountryClass.h
//  RugbyAnthems
//
//  Created by Barry O'Mahony on 26/04/2014.
//  Copyright (c) 2014 Barry O'Mahony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CountryClass : NSObject

@property (strong, nonatomic) NSString              *countryName;
@property (strong, nonatomic) NSString              *songTitle;
@property (strong, nonatomic) NSString              *aboutHTML;
@property (strong, nonatomic) NSString              *lyricsHTML;
@property (strong, nonatomic) NSString              *translatedHTML;
@property (strong, nonatomic) NSNumber              *countryID;
@property (nonatomic, strong) UIImage               *image;

@property (nonatomic, strong) NSArray               *countries;

-(NSArray *) getCountryFromJSONArray:(NSArray *)jsonArray;

@end
