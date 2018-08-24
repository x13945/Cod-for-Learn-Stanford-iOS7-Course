//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by LShaw on 23/08/2018.
//  Copyright © 2018 lstec. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

// designated initializer
- (instancetype) initWithCardCount: (NSUInteger)count usingDeck:(Deck *) deck;

- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end
