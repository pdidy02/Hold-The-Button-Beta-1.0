//
//  MyScene.h
//  Hold The Button Beta 1
//

//  Copyright (c) 2013 The Spark Games. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface MyScene : SKScene
@property(nonatomic, readwrite)NSTimer *timer;
@property(nonatomic,readwrite)int64_t *totalTime;
@end
