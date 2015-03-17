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
    // [ObjectName methodName: parameter];
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event{
    // this will get called every time the player touches the screen (a part of the Cocos2D game engine)
    [character flap];
    // calls the flap method
    
    [self addObstacle];
}

@end
