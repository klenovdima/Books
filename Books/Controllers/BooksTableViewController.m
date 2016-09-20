//
//  BooksTableViewController.m
//  Books
//
//  Created by Dmitry Klenov on 19.09.16.
//  Copyright © 2016 Klenov Dmitry. All rights reserved.
//

#import "BooksTableViewController.h"
#import "BookCell.h"
#import "Book.h"
#import "BookDetailViewController.h"

@interface BooksTableViewController()

@end

@implementation BooksTableViewController

NSMutableArray *booksArray;
Book *currentBook;

-(void)viewDidLoad{
    [super viewDidLoad];
    
    booksArray = [[NSMutableArray alloc] init];
    
    self.navigationController.navigationBarHidden = true;
    
    self.tableView.separatorColor = [UIColor clearColor];
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([BookCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([BookCell class])];
    
    [self prepeareBooks];
    
    [self.tableView reloadData];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return booksArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    BookCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([BookCell class]) forIndexPath:indexPath];
    
    Book *book = booksArray[indexPath.row];

    cell.bookNameLabel.text = book.getTitle;
    cell.bookShortDescriptionTextView.text = book.getShortDescription;
    cell.bookImageView.image = book.getBookImage;
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 120;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    currentBook = booksArray[indexPath.row];
    
    [self performSegueWithIdentifier:@"toBookDetailsSegue" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    if ([[segue identifier] isEqualToString:@"toBookDetailsSegue"]){
        BookDetailViewController *vc = [segue destinationViewController];
        vc.currentBook = currentBook;
    }
}

- (BOOL)prefersStatusBarHidden {
    
    return YES;
}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

-(void)prepeareBooks{
    
    Book *HarryPotter = [[Book alloc]initWithBook:@"Harry Potter" andBookShortDescription:@"Harry Potter is the most miserable, lonely boy you can imagine." andBookDescription:@"Harry Potter is the most miserable, lonely boy you can imagine. He’s shunned by his relatives, the Dursley’s, that have raised him since he was an infant. He’s forced to live in the cupboard under the stairs, forced to wear his cousin Dudley’s hand-me-down clothes, and forced to go to his neighbour’s house when the rest of the family is doing something fun. Yes, he’s just about as miserable as you can get." andBookImage:[UIImage imageNamed:@"HarryPotter.jpg"]];
    
    Book *LordOfTheRing = [[Book alloc]initWithBook:@"The Lord of the Rings" andBookShortDescription:@"Sauron, the Dark Lord, has gathered to him all the Rings of Power, the means by which he intends to rule Middle-earth." andBookDescription:@"Sauron, the Dark Lord, has gathered to him all the Rings of Power, the means by which he intends to rule Middle-earth. All he lacks in his plans for dominion is the One Ring, the ring that rules them all, which has fallen into the hands of the hobbit, Bilbo Baggins. In a sleepy village in the Shire, young Frodo Baggins finds himself faced with an immense task, as his elderly cousin Bilbo entrusts the Ring to his care. Frodo must leave his home and make a perilous journey across Middle-earth to the Cracks of Doom, there to destroy the Ring and foil the Dark Lord in his evil purpose." andBookImage:[UIImage imageNamed:@"LordOfTheRing.jpg"]];
    
    Book *Kaidzen = [[Book alloc]initWithBook:@"Kaidzen" andBookShortDescription:@"Kaizen is the practice of continuous improvement. Kaizen was originally introduced to the West by Masaaki Imai in his book." andBookDescription:@"Kaizen is the practice of continuous improvement. Kaizen was originally introduced to the West by Masaaki Imai in his book Kaizen: The Key to Japan’s Competitive Success in 1986. Today Kaizen is recognized worldwide as an important pillar of an organization’s long-term competitive strategy. One of the most notable features of kaizen is that big results come from many small changes accumulated over time. However this has been misunderstood to mean that kaizen equals small changes. In fact, kaizen means everyone involved in making improvements. While the majority of changes may be small, the greatest impact may be kaizens that are led by senior management as transformational projects, or by cross-functional teams as kaizen events." andBookImage:[UIImage imageNamed:@"Kaidzen.png"]];
    
    [booksArray addObject:Kaidzen];
    [booksArray addObject:HarryPotter];
    [booksArray addObject:LordOfTheRing];
    [booksArray addObject:Kaidzen];
    [booksArray addObject:HarryPotter];
    [booksArray addObject:LordOfTheRing];
    [booksArray addObject:Kaidzen];
    [booksArray addObject:HarryPotter];
    [booksArray addObject:LordOfTheRing];
    [booksArray addObject:Kaidzen];
    [booksArray addObject:HarryPotter];
    [booksArray addObject:LordOfTheRing];
    
}


@end
