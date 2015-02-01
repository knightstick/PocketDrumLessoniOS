//
//  Exercise.h
//  PocketDrumLesson
//
//  Created by Test Mac on 1/02/2015.
//  Copyright (c) 2015 Chris Jewell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Exercise : NSObject

@property (strong, nonatomic) NSNumber *id;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *tier;
@property (strong, nonatomic) NSString *exerciseType;

- (id) initWithID:(NSNumber *)anID name:(NSString *)aName tier:(NSNumber *)aTier exerciseType:(NSString *)aType;

@end
