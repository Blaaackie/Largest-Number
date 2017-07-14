//
//  main.m
//  Largest Number
//
//  Created by Tye Blackie on 2017-06-08.
//  Copyright © 2017 Tye Blackie. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        id largestNumber = 0;
        
        NSArray *numberArray =  @[ @45, @58, @12, @79, @20, @75 ];
        // Place any, and as many numbers within this array as you would like.
        
        
        // Below is a method that takes the array provided (numberArray), counts the number of items in the array, then moves through the array one item at a time. Every time the loop runs, it compares the current number (0) with the following item. If the following number in the array is greater than the current number, "largestNumber" then becomes equal to to that number. The for loop does this until there are no more items in the array.
        for (int i = 0; i < [numberArray count]; i++) {
            id number = [numberArray objectAtIndex: i];
            if (largestNumber < number) {
                largestNumber = number;
            }
        }
        // Once the largest number is determined, It is then output to the console, along with the length of the array.
        NSLog(@"\nThere are %lu numbers in this array\n", [numberArray count]);
        NSLog(@"\nAnd the largest of those nnumbers is %@.\n", largestNumber);
        
        
    }
    return 0;
}
