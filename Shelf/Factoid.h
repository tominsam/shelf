//
//  Factoid.h
//  Shelf
//
//  Created by Tom Insam on 2013/12/04.
//  Copyright (c) 2013 Tom Insam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Person;

@interface Factoid : NSManagedObject

@property (nonatomic, retain) Person *person;

@end
