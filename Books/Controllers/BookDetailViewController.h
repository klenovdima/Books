//
//  BookDetailViewController.h
//  Books
//
//  Created by Dmitry Klenov on 20.09.16.
//  Copyright © 2016 Klenov Dmitry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"

@interface BookDetailViewController : UIViewController

@property(strong,nonatomic) Book *currentBook;

@end
