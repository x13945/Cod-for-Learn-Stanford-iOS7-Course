//
//  PlayingCard.h
//  OCTest01
//
//  Created by LShaw on 29/06/2018.
//  Copyright © 2018 fengwu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger )maxRank;

@end
