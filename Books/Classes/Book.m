//
//  Book.m
//  Books
//
//  Created by Dmitry Klenov on 19.09.16.
//  Copyright © 2016 Klenov Dmitry. All rights reserved.
//

#import "Book.h"
#import <UIKit/UIKit.h>
@implementation Book


-(id) initWithBook:(NSString*)bookTitle andBookShortDescription:(NSString *)bookShortDescription andBookDescription: (NSString*)bookDescription andBookImage: (UIImage*)bookImage{
    self = [super init];
    
    if (self){
        self.bookTitle = bookTitle;
        self.bookShortDescription = bookShortDescription;
        self.bookDescription = bookDescription;
        self.bookImage = bookImage;
    }
    
    return self;
}

-(NSString *)getTitle{
    return _bookTitle;
}
-(NSString *)getDescription{
    return _bookDescription;
}
-(NSString*)getShortDescription{
    return _bookShortDescription;
}
-(UIImage*)getBookImage{
    return _bookImage;
}

@end
