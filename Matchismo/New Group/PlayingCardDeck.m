//
//  PlayingCardDeck.m
//  OCTest01
//
//  Created by LShaw on 29/06/2018.
//  Copyright © 2018 fengwu. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"
#import "Card.h"
#import "Deck.h"


@implementation PlayingCardDeck

- (instancetype)init
{
    self = [super init];
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard: card];
            }
        }
    }
    return self;
}
@end
