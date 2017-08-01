//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"


@implementation Kitchen

-(Pizza *)makePizzaWithSize:(pizzaSize)size andToppings:(NSArray *)toppings {
    
    Pizza *newPizza;

//Asks delegate if it should upgrade order
    if([self.delegate kitchenShouldUpgradeOrder:self] == YES){
        size = Large;
    }
//Checks toppings specifically to see wether or not there are anchovies
    
    if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings] == NO){
        return nil;
    }
    
    if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings] == YES) {
       return [[Pizza alloc] initWithToppings: toppings andSize:size ];
    }
  
    
//Responds to the optional "kitchenDidMakePizza"
    
    if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
        [self.delegate kitchenDidMakePizza:newPizza];
    }
    
    
    return newPizza;
}
@end
