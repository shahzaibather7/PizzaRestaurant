//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];


        
          
            
            while (TRUE) {
                // Loop forever
                
                NSLog(@"> ");
                char str[100];
                fgets (str, 100, stdin);
                
                NSString *inputString = [[NSString alloc] initWithUTF8String:str];
                inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                
                NSLog(@"Input was %@", inputString);
                
                // Take the first word of the command as the size, and the rest as the toppings
                
                NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
                
                
////Taking user input and converting it into a NSMutable Array
                
                NSMutableArray *mutableCommandWords = [commandWords mutableCopy];
//                
//                 [mutableCommandWords removeObjectAtIndex:0];
//                
//                NSArray *shorterArrayforPizzaTopping = [[NSArray alloc] initWithArray: mutableCommandWords ];
//                
//                NSLog(@"%@", shorterArrayforPizzaTopping);
//                
//           //     NSString *sizeStringSent = commandWords[0];

                
                [restaurantKitchen makePizzaWithSize:[Pizza convertStringtoSize: [Pizza getFirstElementArray:mutableCommandWords]] andToppings:[Pizza getRestofArrayToppings:mutableCommandWords] ];
                

                
                // And then send some message to the kitchen...

            
            
        }
        

    }
    return 0;
}

