//
//  Maze.h
//  MouseMaze
//
//  Created by Aditya Narayan on 6/23/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mouse.h"

@interface Maze : NSObject

@property (nonatomic, retain) MazePoint * top;
@property (nonatomic, retain) MazePoint * bottom;
@property (nonatomic, retain) MazePoint * left;
@property (nonatomic, retain) MazePoint * right;
@property (nonatomic, retain) MazePoint * a;
@property (nonatomic, retain) MazePoint * b;

@property (nonatomic, retain) Mouse * mouse;

- (void)setUpMaze;
- (MazePoint *)startMouse;
- (Mouse *)runMouse:(Mouse *)mouse;

@end
