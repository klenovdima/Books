//
//  BookDetailViewController.m
//  Books
//
//  Created by Dmitry Klenov on 20.09.16.
//  Copyright © 2016 Klenov Dmitry. All rights reserved.
//

#import "BookDetailViewController.h"
#import "Book.h"

@interface BookDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *bookImageView;
@property (weak, nonatomic) IBOutlet UILabel *bookNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *bookDescriptionTextView;


@end

@implementation BookDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISwipeGestureRecognizer *gestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandler:)];
    [gestureRecognizer setDirection:(UISwipeGestureRecognizerDirectionRight)];
    
    [self.view addGestureRecognizer:gestureRecognizer];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:true];
    
    _bookImageView.image = _currentBook.getBookImage;
    _bookNameLabel.text = _currentBook.getTitle;
    _bookDescriptionTextView.text = _currentBook.getDescription;
    
    self.title = _currentBook.getTitle;
}


- (void)viewDidLayoutSubviews {
    
    [_bookDescriptionTextView setContentOffset:CGPointZero animated:NO];
}

-(void)swipeHandler:(UISwipeGestureRecognizer *)recognizer {
   
    [self.navigationController popToRootViewControllerAnimated:true];
}

- (BOOL)prefersStatusBarHidden {
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
