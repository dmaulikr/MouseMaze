//
//  MazePoint.h
//  MouseMaze
//
//  Created by Aditya Narayan on 6/23/16.
//  Copyright © 2016 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MazePoint : NSObject

@property (nonatomic, retain) NSString * pointName;

- (instancetype)initWithName:(NSString *)pointName;

@end
