//
//  Mouse.h
//  MouseMaze
//
//  Created by Aditya Narayan on 6/23/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MazePoint.h"

@interface Mouse : NSObject

@property (nonatomic, retain) MazePoint * previousPoint;
@property (nonatomic, retain) MazePoint * currentPoint;


@end
