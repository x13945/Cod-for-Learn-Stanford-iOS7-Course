//
//  ViewController.m
//  Matchismo
//
//  Created by LShaw on 29/06/2018.
//  Copyright © 2018 lstec. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()
@property (nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@end

@implementation ViewController

- (CardMatchingGame *)game
{
    if (!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count]
                                                          usingDeck: [self createDeck]];

    return _game;
}

- (Deck *)createDeck
{
    return  [[PlayingCardDeck alloc] init];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    NSUInteger cardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

- (void)updateUI {
    for (UIButton *cardButton in self.cardButtons) {
        NSUInteger cardIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardIndex];
        [cardButton setTitle:[self titleForCard: card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard: card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isChosen;
    }

    NSLog(@"Flip count = %d", self.game.score);
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
}

- (UIImage *)backgroundImageForCard:(Card *)card {
    return [UIImage imageNamed:card.isChosen ? @"cardfront" : @"cardback"];
}

- (NSString *)titleForCard:(Card *)card {
    return card.isChosen ? card.content: @"";
}

@end
