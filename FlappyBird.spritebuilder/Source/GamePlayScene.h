//
//  GamePlayScene.h
//  FlappyBird
//
//  Created by Gerald on 2/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"
#import "Character.h"

typedef NS_ENUM(NSInteger, DrawingOrder) {
    DrawingOrderPipes,
    DrawingOrderGround,
    DrawingOrderHero
};

@interface GamePlayScene : CCNode <CCPhysicsCollisionDelegate>
{
    // define variables here;
    Character* character;
    CCPhysicsNode* physicsNode; // reference a node that simulates physics
    // node: single unit in a hierarchy
    // node hierarchy keeps track of which nodes influence other nodes
    // parent node has child nodes ... -> kind of like inheritance
}

-(void) initialize;
-(void) addObstacle;
-(void) showScore;

@end
