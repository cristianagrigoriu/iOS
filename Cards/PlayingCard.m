//
//  PlayingCard.m
//  Cards
//
//  Created by Cristiana on 16/06/15.
//  Copyright (c) 2015 Cristiana. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

//- (NSString *) contents
//{
//    NSArray *rankStrings = [PlayingCard rankStrings];
//    return [[rankStrings[self.rank] stringByAppendingString:self.suit] stringByAppendingString:self.colour];
//}

@synthesize suit = _suit;

+ (NSArray *)validSuits
{
    return @[@"♠️", @"♣️", @"♥️", @"♦️"];
}

-(void) setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit])
    {
        _suit = suit;
    }
}

-(NSString *) suit
{
    return _suit ? _suit : @"?";
}

- (NSString *) colour
{
    if ([@[@"♠︎", @"♣︎"] containsObject: self.suit]) {
        return @"black";
    }
    else if ([@[@"♥︎", @"♦︎"] containsObject: self.suit])
    {
        return @"red";
    }
    else
        return @"?";
}

+ (NSArray *) rankStrings
{
    return @[@"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger) maxRank
{
    return [[self rankStrings] count] - 1;
}

@end
