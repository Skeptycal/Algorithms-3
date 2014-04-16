//
//  RLAlgorithmsController.m
//  Algorithms
//
//  Created by rl on 4/16/14.
//  Copyright (c) 2014 Rene Limberger. All rights reserved.
//

#import "RLAlgorithmsController.h"

@implementation RLAlgorithmsController



+ (NSInteger)countInversions:(NSArray*)array
{
    // if there is only 1 values, or none, there are no inversions
    if (array.count < 2) {
        return 0;
    }
    
    // for merge/sort, we need to be able to modify the array
    NSMutableArray* a = [NSMutableArray arrayWithArray:array];
    
    NSInteger inversions = 0;
    
    // array has 2 elements, just compare them and sort if nedded
    if (a.count == 2) {
        NSNumber* first = array[0];
        NSNumber* second = array[1];
        
        if (first.integerValue > second.integerValue) {
            inversions++;
            a[0] = second;
            a[1] = first;
        }
    }
    
    // array has more than 2 elements, we are going to split it and recurse
    else {
        // split into 2 arrays
        NSInteger remainder = a.count % 2;
        NSInteger splintPoint = a.count / 2 + remainder;
        NSArray* left = [a subarrayWithRange:NSMakeRange(0, a.count-splintPoint)];
        NSArray* right = [a subarrayWithRange:NSMakeRange(a.count-splintPoint, splintPoint)];
    
        // recurse on these 2 new arrays of half size
        inversions += [RLAlgorithmsController countInversions:left];
        inversions += [RLAlgorithmsController countInversions:right];
        
        // merge/sort
        NSInteger leftIndex = 0;
        NSInteger rightIndex = 0;
        for (NSInteger i = 0; i < array.count; i++) {
            NSNumber* leftNumber;
            if (leftIndex < left.count)
                leftNumber = left[leftIndex];
            NSNumber* rightNumber;
            if (rightIndex < right.count)
                rightNumber = right[rightIndex];
            
            if (leftNumber && rightNumber && rightNumber.integerValue < leftNumber.integerValue) {
                a[i] = rightNumber;
                rightIndex++;
                inversions++;
            }
            else if (leftNumber) {
                a[i] = leftNumber;
                leftIndex++;
            }
        }
    }
    
    // if the array was mofified by merge/sort, the recursing caller needs it back 
    array = a;
    
    // done counting, we should know the correct number of inversions now
    return inversions;
}

@end
