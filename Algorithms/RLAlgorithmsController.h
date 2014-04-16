//
//  RLAlgorithmsController.h
//  Algorithms
//
//  Created by rl on 4/16/14.
//  Copyright (c) 2014 Rene Limberger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RLAlgorithmsController : NSObject

/*!
 Counts the inversions within an array. 
 
 @param array An array of NSInteger values;
 
 @return Returns the number of inversions in the array.
 
 @discussion This is an exersize of chapter III of
 Tim Roughgarden's Algorithms course at Stanford.
 
 https://class.coursera.org/algo-004/lecture/preview
 */
+ (NSInteger)countInversions:(NSArray*)array;

@end
