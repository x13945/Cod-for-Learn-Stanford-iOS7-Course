//
//  Deck.h
//  OCTest01
//
//  Created by LShaw on 09/06/2018.
//  Copyright © 2018 fengwu. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck: NSObject

- (void) addCard:(Card *)card atTop:(BOOL)atTop;
- (void) addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
