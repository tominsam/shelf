//
//  Person.h
//  Shelf
//
//  Created by Tom Insam on 2013/12/04.
//  Copyright (c) 2013 Tom Insam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Person : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *factoids;
@end

@interface Person (CoreDataGeneratedAccessors)

- (void)addFactoidsObject:(NSManagedObject *)value;
- (void)removeFactoidsObject:(NSManagedObject *)value;
- (void)addFactoids:(NSSet *)values;
- (void)removeFactoids:(NSSet *)values;

@end
