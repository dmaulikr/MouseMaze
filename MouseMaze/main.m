//
//  main.m
//  MouseMaze
//
//  Created by Aditya Narayan on 6/22/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Maze.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
  
        Maze * maze = [[Maze alloc]init];
        
        int countOfExitsAtB = 0;
        
        for (int i = 0; i < 1000; i++) {
            if ([[maze startMouse].pointName isEqualToString:@"point B"]) {
                countOfExitsAtB++;
            }
        }
        NSLog(@"The mouse exits at B %d times out of 1,000.", countOfExitsAtB);
    }
    
    return 0;
}
