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
        int answer = 0;
        int guess = 0;
        int turn = 0;
        
        answer = arc4random() % 100 + 1;
        turn = 1;
        
        
        while (guess != answer && turn <= 5) {
        
            NSLog(@"Guess #%i: Enter a number between 1 and 100", turn);
            scanf("%i", &guess);
            
            
        if (guess != answer && turn < 5) {
            
            if (guess > answer) {
                NSLog(@"Lower!");
            }
            else if (guess < answer) {
                NSLog(@"Higher!");
            }
        }
        else if (guess != answer && turn >= 5) {

            NSLog(@"Sorry! The number was %i! Play again!", answer);
                }
        else {
            NSLog(@"Correct! The answer was %i", answer);
            }
        turn++;
        } // end of while loop
        
        if (guess == answer) {
            NSLog(@"It took you %i tries", turn - 1 );
        }
    }
    return 0;
}

