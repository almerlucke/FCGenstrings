//
//  main.m
//  FCGenstrings
//
//  Created by Almer Lucke on 9/11/15.
//  Copyright (c) 2015 Farcoding. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "FCGenstrings.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [FCGenstrings genstringsForDirectory:@"/Users/almerlucke/Documents/Projects/iOS/CentreOfAppliedGaming_Parkinson/CentreOfAppliedGaming_Parkinson"];
    }
    return 0;
}
