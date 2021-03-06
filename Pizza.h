//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Mohammad Shahzaib Ather on 2017-07-27.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

typedef enum {
    Small,
    Medium,
    Large,
    Nothing
} pizzaSize ;

@interface Pizza : NSObject

@property (nonatomic) pizzaSize pizzaSize;
@property (nonatomic,strong) NSArray *pizzaToppings;

    
    
//PIZZA METHODS
    - (instancetype)initWithToppings:(NSArray *)toppings andSize: (pizzaSize) size;

    +(NSString*) getFirstElementArray : (NSArray*) firstElement ;
    +(NSArray*)  getRestofArrayToppings : (NSArray*) toppingArray;
    +(pizzaSize) convertStringtoSize : (NSString*) userInputString;
    +(NSString*) convertPizzaArraytoStringToppings: (NSArray*) orderArray ;

    
   
@end
