//
//  Deck.h
//  Cards
//
//  Created by Cristiana on 15/06/15.
//  Copyright (c) 2015 Cristiana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "PlayingCard.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;
-(PlayingCard *) drawRandomCard;
+(NSUInteger)getNumberOfCards;

@end
