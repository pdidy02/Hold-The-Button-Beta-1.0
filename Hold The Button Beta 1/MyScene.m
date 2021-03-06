//
//  MyScene.m
//  Hold The Button Beta 1
//
//  Created by Parker Hardy on 6/18/13.
//  Copyright (c) 2013 The Spark Games. All rights reserved.
//

#import "MyScene.h"

@implementation MyScene
@synthesize timer;
@synthesize totalTime;
-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        myLabel.text = @"Hello, World!";
        myLabel.fontSize = 30;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        
        [self addChild:myLabel];
    }
    return self;
}
-(void)timerCount{
    totalTime++;
    NSLog([NSString stringWithFormat:@"%lld",totalTime]);
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    totalTime=0;
    timer=[NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(timerCount) userInfo:nil repeats:YES];
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.position = location;
        [self removeAllChildren];
    }}
-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
