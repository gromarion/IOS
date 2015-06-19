//
//  EnemyPlane_1.m
//  Cocos2DSimpleGame
//
//  Created by German Romarion on 12/6/15.
//  Copyright (c) 2015 Razeware LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "EnemyPlane_1.h"
#include "EnemyBullet.h"
#include "GameScene.h"
#include "Muzzle.h"

@implementation EnemyPlane_1

- (id) init {
    self = [super init];
    if (self) {
        [self setSpriteFrame:[CCSpriteFrame frameWithImageNamed: ENEMY_PLANE_1_IMAGE]];
        self.physicsBody = [CCPhysicsBody bodyWithRect:(CGRect){CGPointZero, self.contentSize} cornerRadius:0];
        self.physicsBody.collisionCategories = @[ENEMY_COLLISION];
        self.physicsBody.collisionMask = @[PROJECTILE_COLLISION];
        self.physicsBody.collisionType = ENEMY_COLLISION;
        self.physicsBody.velocity = ccp(ENEMY_PLANE_1_SPEED, 0);
        self.scale = PLANE_SCALE;
        self.score = ENEMY_PLANE_1_SCORE;
    }
    return self;
}

- (void) update:(CCTime)delta {
    if (self.position.x < -self.contentSize.width) {
        [self removeFromParent];
    }
    else if (arc4random()%100 > 98) {
        [self shootEnemy:delta];
    }
}

- (void)shootEnemy:(CCTime)dt{
    EnemyBullet *bullet = [[EnemyBullet alloc] initWithPosition:ccp(self.position.x - 25, self.position.y)];
    CCPhysicsNode* pw = ((GameScene*)[CCDirector sharedDirector].runningScene).physicsWorld;
    Muzzle* muzzle = [[Muzzle alloc] initWithPosition: ccp(self.position.x - 25, self.position.y)];
    muzzle.scaleX = -MUZZLE_SCALE;
    muzzle.scaleY = MUZZLE_SCALE;
    [muzzle schedule:@selector(animate:) interval:0.05];
    [pw addChild:muzzle];
    [pw addChild:bullet];
}

@end