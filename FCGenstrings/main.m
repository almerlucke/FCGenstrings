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
        NSArray *arguments = [[NSProcessInfo processInfo] arguments];
        
        if (arguments.count != 2) {
            printf("Usage: FCGenstrings folder\n");
            return 0;
        }
        
        NSString *folder = arguments[1];
        
        if (![folder isKindOfClass:[NSString class]]) {
            printf("Usage: FCGenstrings folder\n");
            return 0;
        }
        
        if (folder.length > 0 && ![[folder substringToIndex:1] isEqualToString:@"/"]) {
            NSString *currentDirectory = [[NSFileManager defaultManager] currentDirectoryPath];
            
            folder = [currentDirectory stringByAppendingPathComponent:folder];
        }
        
        printf("Generating strings for folder %s\n", [folder cStringUsingEncoding:NSUTF8StringEncoding]);
    
        [FCGenstrings genstringsForDirectory:folder];
        
        printf("Finished generating strings\n");
    }
    return 0;
}
