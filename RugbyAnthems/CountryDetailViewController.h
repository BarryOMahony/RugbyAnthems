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


@property (strong, nonatomic) IBOutlet UILabel *songName;

@property (strong, nonatomic) IBOutlet UIButton *aboutButton;
@property (strong, nonatomic) IBOutlet UIButton *lyricsButton;
@property (strong, nonatomic) IBOutlet UIButton *translatedButton;


@end
