//
//  TableViewCell.m
//  RugbyAnthems
//
//  Created by Barry O'Mahony on 01/07/2014.
//  Copyright (c) 2014 Barry O'Mahony. All rights reserved.
//

#import "TableViewCell.h"
#import "ViewController.h"

@implementation TableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
