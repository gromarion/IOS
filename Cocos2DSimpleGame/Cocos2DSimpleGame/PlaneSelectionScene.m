//
//  PlaneSelectionScene.m
//  Cocos2DSimpleGame
//
//  Created by German Romarion on 19/6/15.
//  Copyright (c) 2015 Razeware LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlaneSelectionScene.h"
#import "GameScene.h"

@implementation PlaneSelectionScene

+ (PlaneSelectionScene *)scene {
    return [[self alloc] init];
}

- (id)init {
    self = [super init];
    if (!self) return(nil);
    
    // P-51 Mustang plane
    CCSpriteFrame *p51 = [CCSpriteFrame frameWithImageNamed:@"p51.png"];
    CCButton *p51Button = [CCButton buttonWithTitle:nil spriteFrame:p51];
    p51Button.positionType = CCPositionTypeNormalized;
    p51Button.position = ccp(0.15f, 0.75f);
    [p51Button setTarget:self selector:@selector(onP51ButtonClicked:)];
    [self addChild:p51Button];
    
    // P-51 Mustang plane description
    NSString *p51_description = @"The North American Aviation P-51 Mustang is an American long-range, single-seat fighter and fighter-bomber used during World War II, the Korean War and other conflicts.";
    CGSize rect_size = CGRectMake(0.0, 0.0, 400, 100).size;
    CCLabelTTF *p51_description_label = [CCLabelTTF labelWithString:p51_description fontName:@"Courier New" fontSize:10.0 dimensions:rect_size];
    p51_description_label.positionType = CCPositionTypeNormalized;
    p51_description_label.position = ccp(0.65f, 0.65f);
    [self addChild:p51_description_label];
    
    
    // Spitfire plane
    CCSpriteFrame *spitfire = [CCSpriteFrame frameWithImageNamed:@"p51.png"];
    CCButton *spitfireButton = [CCButton buttonWithTitle:nil spriteFrame:spitfire];
    spitfireButton.positionType = CCPositionTypeNormalized;
    spitfireButton.position = ccp(0.15f, 0.5f);
    [spitfireButton setTarget:self selector:@selector(onSpitfireButtonClicked:)];
    [self addChild:spitfireButton];
    
    // Spitfire plane description
    NSString *spitfire_description = @"The Supermarine Spitfire is a British single-seat fighter aircraft that was used by the Royal Air Force and many other Allied countries during and after the Second World War.";
    CCLabelTTF *spitfire_description_label = [CCLabelTTF labelWithString:spitfire_description fontName:@"Courier New" fontSize:10.0 dimensions:rect_size];
    spitfire_description_label.positionType = CCPositionTypeNormalized;
    spitfire_description_label.position = ccp(0.65f, 0.4f);
    [self addChild:spitfire_description_label];
    
    // Hurricane plane
    CCSpriteFrame *hurricane = [CCSpriteFrame frameWithImageNamed:@"p51.png"];
    CCButton *hurricaneButton = [CCButton buttonWithTitle:nil spriteFrame:hurricane];
    hurricaneButton.positionType = CCPositionTypeNormalized;
    hurricaneButton.position = ccp(0.15f, 0.25f);
    [hurricaneButton setTarget:self selector:@selector(onHurricaneButtonClicked:)];
    [self addChild:hurricaneButton];
    
    // Spitfire plane description
    NSString *hurricane_description = @"The Hawker Hurricane is a British single-seat fighter aircraft that was designed and predominantly built by Hawker Aircraft Ltd for the Royal Air Force.";
    CCLabelTTF *hurricane_description_label = [CCLabelTTF labelWithString:hurricane_description fontName:@"Courier New" fontSize:10.0 dimensions:rect_size];
    hurricane_description_label.positionType = CCPositionTypeNormalized;
    hurricane_description_label.position = ccp(0.65f, 0.15f);
    [self addChild:hurricane_description_label];
    return self;
}

- (void)onP51ButtonClicked:(id)sender {
    [[CCDirector sharedDirector] replaceScene:[GameScene sceneWithPlane: @"p51.png"]
                               withTransition:[CCTransition transitionPushWithDirection:CCTransitionDirectionLeft duration:1.0f]];
}

- (void)onSpitfireButtonClicked:(id)sender {
    [[CCDirector sharedDirector] replaceScene:[GameScene sceneWithPlane: @"p51.png"]
                               withTransition:[CCTransition transitionPushWithDirection:CCTransitionDirectionLeft duration:1.0f]];
}

- (void)onHurricaneButtonClicked:(id)sender {
    [[CCDirector sharedDirector] replaceScene:[GameScene sceneWithPlane: @"p51.png"]
                               withTransition:[CCTransition transitionPushWithDirection:CCTransitionDirectionLeft duration:1.0f]];
}

@end