//
//  BookCell.h
//  Books
//
//  Created by Dmitry Klenov on 19.09.16.
//  Copyright © 2016 Klenov Dmitry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *bookImageView;
@property (weak, nonatomic) IBOutlet UILabel *bookNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *bookShortDescriptionTextView;
@property (weak, nonatomic) IBOutlet UIView *bookBackgroundView;




@end
