//
//  main.m
//  GuitarString
//
//  Created by Gabrielle Miller-Messner on 4/13/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GuitarString-Swift.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSError *error;
        GuitarString *myString = [[GuitarString alloc] init];
        [myString pluckWithVelocity:1 error:&error];
        
        // If there was an error, log it
        if(error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }
    return 0;
}
