//
//  CheerfulManager.m
//  PizzaRestaurant
//
//  Created by Mohammad Shahzaib Ather on 2017-07-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CheerfulManager.h"

@implementation CheerfulManager

    -(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(pizzaSize)size andToppings:(NSArray *)toppings{
        return YES;
    }
    -(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
        return YES;
    }
    
    -(void)kitchenDidMakePizza:(Pizza *)pizza{
        
        NSLog(@"Yes,enjoy your pizza!!!!!!");
    }

    -(BOOL) shouldMakePizza:(NSArray *)toppingChecker{
        return YES;
    }
@end
