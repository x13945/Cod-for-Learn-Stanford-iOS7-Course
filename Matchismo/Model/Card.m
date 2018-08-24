//
//  Card.m
//  OCTest01
//
//  Created by LShaw on 06/06/2018.
//  Copyright © 2018 fengwu. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "Card.h"

@interface Card()
@end

@implementation Card

- (int)match: (NSArray *)otherCards
{
    int score = 0;

    for (Card *card in otherCards) {
        if ([card.content isEqualToString:self.content]) {
            score = 1;
        }
    }

    return score;
}

@end
