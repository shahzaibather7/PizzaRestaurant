//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "AngryManager.h"
#import "CheerfulManager.h"
#import "Manager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
       
        
        Kitchen *restaurantKitchen = [Kitchen new];


        
        NSLog(@"SELECT YOUR MANAGER \n Input the number : 1 for Nice Manager \n Input the number: 2 for Rude Manager ");
        char managerSelector[100];
        fgets (managerSelector, 100, stdin);
        NSString *inputString2 = [[NSString alloc] initWithUTF8String:managerSelector];
        inputString2 = [inputString2 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
       

        
//Going into while loop  --------------------------------------------------------------------------------------------------
            while (TRUE) {
               

//Asks user what kind of manager they would want
            
                if ([inputString2 isEqualToString:@"1"]) {
                  Manager *niceManger = [[CheerfulManager alloc]init];
                    NSLog(@"You have chose the nice manager %@", niceManger);
                }
            
            else if ([inputString2  isEqual: @"2"]) {
                  Manager *angryManager = [[AngryManager alloc]init];
                    NSLog(@"You have chose the angry manager %@" , angryManager);
                }
                                
                
                NSLog(@"Please pick your pizza size and toppings:");
                char str[100];
                fgets (str, 100, stdin);
                
                NSString *inputString = [[NSString alloc] initWithUTF8String:str];
                inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                
                NSLog(@"Input was %@", inputString);
                
                // Take the first word of the command as the size, and the rest as the toppings
                
                NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
                
                
////Taking user input and converting it into a NSMutable Array
                
                NSMutableArray *mutableCommandWords = [commandWords mutableCopy];

                
                
                Pizza *cookedPizza = [restaurantKitchen makePizzaWithSize:[Pizza convertStringtoSize: [Pizza getFirstElementArray:mutableCommandWords]] andToppings:[Pizza getRestofArrayToppings:mutableCommandWords] ];
                

                
                // And then send some message to the kitchen...
//Printing out pizza toppings
               
                NSString *pizzaToppingConvertedString = [Pizza convertPizzaArraytoStringToppings:cookedPizza.pizzaToppings];
                NSLog(@"The toppings for the pizza you ordered are : %@ ",pizzaToppingConvertedString );
                
                
            
        }
        

    }
    return 0;
}

