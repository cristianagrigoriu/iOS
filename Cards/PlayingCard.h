//
//  PlayingCard.h
//  Cards
//
//  Created by Cristiana on 16/06/15.
//  Copyright (c) 2015 Cristiana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSString* rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;
+ (NSArray *) rankStrings;

@end
