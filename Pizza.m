//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Mohammad Shahzaib Ather on 2017-07-27.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"


@implementation Pizza

    - (instancetype)initWithToppings:(NSArray *)toppings andSize: (pizzaSize) size
    {
        self = [super init];
        if (self) {
            _pizzaToppings = toppings;
            _pizzaSize = size;
        }
        return self;
    }
    
   
    
    +(NSString*) getFirstElementArray : (NSArray*) fullArray {
        NSString *theSizeFirstElement = fullArray[0];
        return theSizeFirstElement;
    }
    +(NSArray*)  getRestofArrayToppings : (NSMutableArray*) fullArray{
      
        [ fullArray removeObjectAtIndex:0];
        NSArray *newToppingArray = [[NSArray alloc] initWithArray:fullArray];
        return newToppingArray;
    }
    
    

//Method for pizza toppings
    
    +(NSString*) convertPizzaArraytoStringToppings: (NSArray*) orderArray {
        
        
        
        NSString * result = [[orderArray valueForKey:@"description"] componentsJoinedByString:@" "];
        
        NSLog(@"The toppings for the pizza you ordered are : %@ ", result);
        return result;
    }
    
//Method for pizza size
    
    +(pizzaSize) convertStringtoSize : (NSString*) userInputString{
        
        if ([userInputString  isEqual: @"Small"]){
            NSLog(@"The user has requested a small pizza");
            return Small;
        }
        
        else if ([userInputString isEqualToString:@"Medium"]){
            NSLog(@"The user has requested a medium pizza");
            return Medium;
          
        }
        
        else if ([userInputString isEqualToString:@"Large"]){
            NSLog(@"The user has requested a large pizza");
            return Large;
        }
        return Nothing;
    }
    
    
    
@end
