//
//  CountryDetailViewController.h
//  RugbyAnthems
//
//  Created by Barry O'Mahony on 26/04/2014.
//  Copyright (c) 2014 Barry O'Mahony. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountryDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *flagView;


@property (weak, nonatomic)   IBOutlet UILabel *songLabel;

@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) UIImage *flager;

@property (strong, nonatomic) IBOutlet UIButton *aboutButton;
@property (strong, nonatomic) IBOutlet UIButton *lyricsButton;
@property (strong, nonatomic) IBOutlet UIButton *translatedButton;


@end
