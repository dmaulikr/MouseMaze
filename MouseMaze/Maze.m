//
//  Maze.m
//  MouseMaze
//
//  Created by Aditya Narayan on 6/23/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import "Maze.h"

@implementation Maze

- (void)setUpMaze {
    
    self.mouse = [[Mouse alloc]init];
    self.a = [[MazePoint alloc]initWithName:@"point A"];
    self.b = [[MazePoint alloc]initWithName:@"point B"];
    self.top = [[MazePoint alloc]initWithName:@"top point"];
    self.bottom = [[MazePoint alloc]initWithName:@"bottom point"];
    self.left = [[MazePoint alloc]initWithName:@"left point"];
    self.right = [[MazePoint alloc]initWithName:@"right point"];
}

- (MazePoint *)startMouse {
    
    [self setUpMaze];

    self.mouse.currentPoint = self.left;
    self.mouse.previousPoint = self.a;

    while (self.mouse.currentPoint != self.a && self.mouse.currentPoint != self.b) {
        
        self.mouse = [self runMouse:self.mouse];
        
    }
    //NSLog(@"The mouse exited at %@.", self.mouse.currentPoint.pointName);
    return self.mouse.currentPoint;
}

- (Mouse *)runMouse:(Mouse *)mouse {
    
    int randomNumber = arc4random_uniform(2);
    
    //if the previous point was top
    if (mouse.previousPoint == self.top) {
        
        mouse.previousPoint = mouse.currentPoint;
        
        if (mouse.currentPoint == self.left) {
            
            if (randomNumber == 0) {
                mouse.currentPoint = self.bottom;
            } else {
                mouse.currentPoint = self.a;
            }
            
        } else if (mouse.currentPoint == self.right) {
            
            if (randomNumber == 0) {
                mouse.currentPoint = self.b;
            } else {
                mouse.currentPoint = self.bottom;
            }
        } else if (mouse.currentPoint == self.bottom) {
            
            if (randomNumber == 0) {
                mouse.currentPoint = self.right;
            } else {
                mouse.currentPoint = self.left;
            }
        }
    }
    
    //if the previous point was right
    else if (mouse.previousPoint == self.right) {
        
        mouse.previousPoint = mouse.currentPoint;
        
        if (mouse.currentPoint == self.top) {
            if (randomNumber == 0) {
                mouse.currentPoint = self.bottom;
            } else {
                mouse.currentPoint = self.left;
            }
            
        } else if (mouse.currentPoint == self.bottom) {
            if (randomNumber == 0) {
                mouse.currentPoint = self.left;
            } else {
                mouse.currentPoint = self.top;
            }
        }
    }
    
    //if the previous point was bottom
    else if (mouse.previousPoint == self.bottom) {
        
        mouse.previousPoint = mouse.currentPoint;
        
        if (mouse.currentPoint == self.left) {
            if (randomNumber == 0) {
                mouse.currentPoint = self.a;
            } else {
                mouse.currentPoint = self.top;
            }
            
        } else if (mouse.currentPoint == self.top) {
            if (randomNumber == 0) {
                mouse.currentPoint = self.right;
            } else {
                mouse.currentPoint = self.left;
            }
            
        } else if (mouse.currentPoint == self.right) {
            if (randomNumber == 0) {
                mouse.currentPoint = self.b;
            } else {
                mouse.currentPoint = self.top;
            }
        }
    }
    
    //if the previous point was left
    else if (mouse.previousPoint == self.left) {
        
        mouse.previousPoint = mouse.currentPoint;
        
        if (mouse.currentPoint == self.top) {
            if (randomNumber == 0) {
                mouse.currentPoint = self.right;
            } else {
                mouse.currentPoint = self.bottom;
            }
        } else if (mouse.currentPoint == self.bottom) {
            if (randomNumber == 0) {
                mouse.currentPoint = self.top;
            } else {
                mouse.currentPoint = self.right;
            }
        }
    }
    
    else if (mouse.previousPoint == self.a) {
        
        mouse.previousPoint = mouse.currentPoint;
        
        if (randomNumber == 0) {
            mouse.currentPoint = self.top;
        } else {
            mouse.currentPoint = self.bottom;
        }
    }
    return mouse;
}

@end
