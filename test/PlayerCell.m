//
//  PlayerCell.m
//  test
//
//  Created by Len on 13-11-23.
//  Copyright (c) 2013年 黄伟铭. All rights reserved.
//

#import "PlayerCell.h"

@implementation PlayerCell
@synthesize nameLabel,ratingImageView;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
