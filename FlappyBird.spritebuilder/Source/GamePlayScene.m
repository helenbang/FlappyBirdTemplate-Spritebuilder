#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    // load a new Character from the CCB file we created for you named Character
    // CCB files are created by SpriteBuilder and describe the properties and appearance of in-game objects like the bird
    [physicsNode addChild:character];
    
    [self addObstacle];
    
    timeSinceObstacle = 0.0f;
    // games typically use "update loop" or "run loop" for regularly scheduled activities (runs really fast)
}

-(void)update:(CCTime)delta
{
    // run every fram
    // delta is the time that has elapsed since the last time it has run
    // Cocos2D = this method will get called 60 times a second
    
    // put update code here
    // Increment the time since the last obstacle was added
    timeSinceObstacle += delta; // delta is approximately 1/60th of a second
    
    // Check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f){
        [self addObstacle]; // add a new obstacle
        timeSinceObstacle = 0.0f; // then reset the timer
    }
}

// put new methods here
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event{
    // this will get called every time the player touches the screen (a part of the Cocos2D game engine)
    [character flap];
    // calls the flap method
    
    
}

@end
