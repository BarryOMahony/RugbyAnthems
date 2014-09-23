//
//  ViewController.m
//  RugbyAnthems
//
//  Created by Barry O'Mahony on 26/04/2014.
//  Copyright (c) 2014 Barry O'Mahony. All rights reserved.
//

#import "ViewController.h"
#import "CountryClass.h"
#import "CountryDetailViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *countries;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    self.homeTableView.dataSource = self;
    
    CountryClass *country = [[CountryClass alloc] init];
    
    NSDictionary *Ireland = @{ @"flag" : @"Irish Flag.png", @"Title" : @"Ireland", @"lyrics" : @"Australians all let us rejoice, For we are young and free, We’ve golden soil and wealth for toil, Our home is girt by sea, Our land abounds in nature’s gifts, Of beauty rich and rare, In history’s page, let every stage, Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair. Beneath our radiant Southern Cross, We’ll toil with hearts and hands, To make this Commonwealth of ours, Renowned of all the lands, For those who’ve come across the seas, We’ve boundless plains to share, With courage let us all combine, To Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair."};
    
    NSDictionary *NewZealand = @{ @"flag" : @"FlagNewZealand", @"Title" : @"NewZealand", @"lyrics" : @"Australians all let us rejoice, For we are young and free, We’ve golden soil and wealth for toil, Our home is girt by sea, Our land abounds in nature’s gifts, Of beauty rich and rare, In history’s page, let every stage, Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair. Beneath our radiant Southern Cross, We’ll toil with hearts and hands, To make this Commonwealth of ours, Renowned of all the lands, For those who’ve come across the seas, We’ve boundless plains to share, With courage let us all combine, To Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair."};
    
    NSDictionary *England = @{ @"flag" : @"FlagEngland", @"Title" : @"England", @"lyrics" : @"Australians all let us rejoice, For we are young and free, We’ve golden soil and wealth for toil, Our home is girt by sea, Our land abounds in nature’s gifts, Of beauty rich and rare, In history’s page, let every stage, Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair. Beneath our radiant Southern Cross, We’ll toil with hearts and hands, To make this Commonwealth of ours, Renowned of all the lands, For those who’ve come across the seas, We’ve boundless plains to share, With courage let us all combine, To Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair."};
    
    NSDictionary *France = @{ @"flag" : @"FlagFrance", @"Title" : @"France", @"lyrics" : @"Australians all let us rejoice, For we are young and free, We’ve golden soil and wealth for toil, Our home is girt by sea, Our land abounds in nature’s gifts, Of beauty rich and rare, In history’s page, let every stage, Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair. Beneath our radiant Southern Cross, We’ll toil with hearts and hands, To make this Commonwealth of ours, Renowned of all the lands, For those who’ve come across the seas, We’ve boundless plains to share, With courage let us all combine, To Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair."};
    
    NSDictionary *Australia = @{ @"flag" : @"FlagAustralia", @"Title" : @"Australia", @"lyrics" : @"Australians all let us rejoice, For we are young and free, We’ve golden soil and wealth for toil, Our home is girt by sea, Our land abounds in nature’s gifts, Of beauty rich and rare, In history’s page, let every stage, Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair. Beneath our radiant Southern Cross, We’ll toil with hearts and hands, To make this Commonwealth of ours, Renowned of all the lands, For those who’ve come across the seas, We’ve boundless plains to share, With courage let us all combine, To Advance Australia Fair. In joyful strains then let us sing, Advance Australia Fair."};
    
    NSArray *array = @[ Ireland, NewZealand, England, France, Australia ];

    NSArray *countriesArray = [country getCountryFromJSONArray:array];
    _countries = countriesArray;

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _countries.count;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString* cellIdentifier = @"myCell";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    CountryClass *country = [_countries objectAtIndex:indexPath.row];
    cell.textLabel.text = country.countryName;
    cell.imageView.image = [UIImage imageNamed:country.image];
    cell.detailTextLabel.text = country.songTitle;
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"segue"]){
        NSIndexPath *indexPath = [self.homeTableView indexPathForSelectedRow];
        CountryDetailViewController *destViewController = segue.destinationViewController;
        destViewController.country = [[_countries objectAtIndex:indexPath.row]countryName];
        
    }
    
}

    

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
