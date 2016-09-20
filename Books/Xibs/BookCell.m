//
//  BookCell.m
//  Books
//
//  Created by Dmitry Klenov on 19.09.16.
//  Copyright © 2016 Klenov Dmitry. All rights reserved.
//

#import "BookCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation BookCell


-(void)awakeFromNib{
    [super awakeFromNib];
    
    //Border
    _bookBackgroundView.layer.borderWidth = 1;
    _bookBackgroundView.layer.borderColor = [[UIColor blackColor] CGColor];
    
    //Shadow
    _bookBackgroundView.layer.masksToBounds = NO;
    _bookBackgroundView.layer.shadowOffset = CGSizeMake(3, 5);
    _bookBackgroundView.layer.shadowRadius = 0;
    _bookBackgroundView.layer.shadowOpacity = 0.5;
    _bookBackgroundView.layer.shadowColor = [[UIColor lightGrayColor] CGColor];
   
    //Gradient
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = _bookBackgroundView.layer.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor whiteColor] CGColor], (id)[[UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1] CGColor], nil];
    [_bookBackgroundView.layer insertSublayer:gradient atIndex:0];
    
}



@end
