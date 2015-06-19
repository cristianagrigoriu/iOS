//
//  Deck.m
//  Cards
//
//  Created by Cristiana on 15/06/15.
//  Copyright (c) 2015 Cristiana. All rights reserved.
//

#import "Deck.h"
#import "PlayingCard.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

- (instancetype) init
{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSString *rank in [PlayingCard rankStrings]) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}

-(NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

-(void)addCard:(Card *)card
         atTop:(BOOL)atTop
{
    if (atTop)
    {
        [self.cards insertObject:card atIndex:0];
    }
    else
    {
        [self.cards addObject:card];
    }
}

-(void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

//+(NSUInteger)getNumberOfCards
//{
//    NSArray *cards = @[@"1", @"2", @"3", @"4"];
//    NSUInteger numberOfCards = [cards count];
//    return numberOfCards;
//}

-(PlayingCard *) drawRandomCard
{
    PlayingCard *randomCard = nil;
    
    if ([self.cards count])
    {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}

@end
