//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Mohammad Shahzaib Ather on 2017-07-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#ifndef KitchenDelegate_h
#define KitchenDelegate_h

#import "Pizza.h"

@class Kitchen;

@protocol KitchenDelegate <NSObject>


@required
    
    -(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(pizzaSize)size andToppings:(NSArray *)toppings;
    -(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
    
    
@optional

    -(void)kitchenDidMakePizza:(Pizza *)pizza;
    
@end





#endif /* KitchenDelegate_h */
