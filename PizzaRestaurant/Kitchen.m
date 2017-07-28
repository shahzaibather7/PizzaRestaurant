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
    Pizza *newPizzaOrder = [[Pizza alloc] initWithToppings: toppings andSize:size ];
    return newPizzaOrder;
}

@end
