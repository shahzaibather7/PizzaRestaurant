//
//  AngryManager.m
//  PizzaRestaurant
//
//  Created by Mohammad Shahzaib Ather on 2017-07-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "AngryManager.h"

@implementation AngryManager

    -(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(pizzaSize)size andToppings:(NSArray *)toppings{
        
            if ([toppings containsObject:@"Anchovies"]){
                NSLog(@"You aint getting no pizza ");
                return NO;
            }
            return YES;
        }

    
    -(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
        return NO;
    }
    
    -(void)kitchenDidMakePizza:(Pizza *)pizza{
        
    }
 
@end
