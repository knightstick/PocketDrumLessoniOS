//
//  Exercise.m
//  PocketDrumLesson
//
//  Created by Test Mac on 1/02/2015.
//  Copyright (c) 2015 Chris Jewell. All rights reserved.
//

#import "Exercise.h"

@implementation Exercise

- (id) init
{
    self = [self initWithID:nil name:@"Blank" tier:@1 exerciseType:@"Miscellaneous"];
    return self;
}

- (id) initWithID:(NSNumber *)anID name:(NSString *)aName tier:(NSNumber *)aTier exerciseType:(NSString *)aType;
{
    self = [super init];
    if(self) {
        self.id = anID;
        self.name = aName;
        self.tier = aTier;
        self.exerciseType = aType;
    }
    return self;
}

@end
