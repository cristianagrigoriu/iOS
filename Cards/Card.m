//
//  Card.m
//  Cards
//
//  Created by Cristiana on 15/06/15.
//  Copyright (c) 2015 Cristiana. All rights reserved.
//

#import "Card.h"

@interface Card()

@property (nonatomic, strong) NSString *colorName;

@end

@implementation Card

@synthesize colorName = _colorName;

-(NSString *)colorName {
    return _colorName;
}

-(void)setColorName:(NSString *)colorName {
    _colorName = colorName;
}

-(void)modifyColorName {
    self.colorName = @"Red";
    [self setColorName: @"Blue"];
    NSString *colorName = [self colorName];
    id card;
    [card setColorName:@""];
    NSObject *object = self;
}

@end
