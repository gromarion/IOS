//
//  PowerUp.h
//  Cocos2DSimpleGame
//
//  Created by German Romarion on 1/7/15.
//  Copyright (c) 2015 Razeware LLC. All rights reserved.
//

#import "cocos2d.h"

@interface PowerUp : CCSprite

- (void) initializeWithPosition: (CGPoint) position;
- (void) update: (CCTime) dt;

@end
