//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Mohammad Shahzaib Ather on 2017-07-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "Pizza.h"

@interface Manager : NSObject <KitchenDelegate>
    

    
    -(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(pizzaSize)size andToppings:(NSArray *)toppings;
    -(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
    -(void)kitchenDidMakePizza:(Pizza *)pizza;
    -(BOOL)shouldMakePizza:(NSArray*) toppingChecker;
    


    
    
@end
