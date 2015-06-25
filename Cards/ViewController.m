//
//  ViewController.m
//  Cards
//
//  Created by Cristiana on 15/06/15.
//  Copyright (c) 2015 Cristiana. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "PlayingCard.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UIButton *button;
@end

@implementation ViewController

//incercare de outlet pentru background image customizable
- (void)viewDidLoad
{
    [super viewDidLoad];
    //button.currentBackgroundImage.
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    Deck *deck = [[Deck alloc] init];
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"dolphin"] forState: UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        
    }
    else {
        PlayingCard *randomCard = deck.drawRandomCard;
        if (randomCard)
        {
            [sender setBackgroundImage:nil forState: UIControlStateNormal];
            [sender setTitle:[randomCard.suit stringByAppendingFormat:@" %@", randomCard.rank]
                    forState:UIControlStateNormal];
        }
    }
}

    
@end
