//
//  Card.h
//  OCTest01
//
//  Created by LShaw on 06/06/2018.
//  Copyright © 2018 fengwu. All rights reserved.
//

#import <Foundation/Foundation.h>

//@importFundation；

@interface Card: NSObject

@property (strong, nonatomic) NSString *content;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL match;

- (int)match: (NSArray *)otherCards;

@end
