//
//  Book.h
//  Books
//
//  Created by Dmitry Klenov on 19.09.16.
//  Copyright © 2016 Klenov Dmitry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Book : NSObject
@property (nonatomic,strong) NSString *bookTitle;
@property (nonatomic,strong) NSString *bookShortDescription;
@property (nonatomic,strong) NSString *bookDescription;
@property (nonatomic,strong) UIImage *bookImage;

- (id) initWithBook:(NSString *)bookTitle andBookShortDescription:(NSString *)bookShortDescription andBookDescription: (NSString*)bookDescription andBookImage: (UIImage*)bookImage;
-(NSString *)getTitle;
-(NSString *)getDescription;
-(NSString *)getShortDescription;
-(UIImage*)getBookImage;


@end
