//
//  MazePoint.m
//  MouseMaze
//
//  Created by Aditya Narayan on 6/23/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import "MazePoint.h"

@implementation MazePoint

- (instancetype)initWithName:(NSString *)pointName {
    
    self = [super init];
    
    if (self) {
        _pointName = pointName;
        return self;
    }
    return nil;
}

@end
