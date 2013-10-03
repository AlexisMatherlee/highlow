//
//  main.m
//  My First Project
//
//  Created by Alexis Matherlee on 10/3/13.
//  Copyright (c) 2013 Alexis Matherlee. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int guess = 0;
        int turn = 1;
        int answer = arc4random() % 100 + 1;
        
        
        while (guess != answer && turn <= 5) {
        
            NSLog(@"Guess #%i: Enter a number between 1 and 100", turn);
            scanf("%i", &guess);
            
            if (guess == answer) {
                NSLog(@"Correct! The answer was %i! It took you %i tries.", answer, turn - 1 );
            }
            else if (turn < 5) {
            
                if (guess > answer) {
                NSLog(@"Lower!");
                }
                else if (guess < answer) {
                NSLog(@"Higher!");
                }
            }
            else {
                NSLog(@"Sorry! The number was %i! Play again!", answer);
                }
        turn++;
        } // end of while loop

    }
    return 0;
}

