//
//  ExerciseViewController.m
//  PocketDrumLesson
//
//  Created by Test Mac on 1/02/2015.
//  Copyright (c) 2015 Chris Jewell. All rights reserved.
//

#import "ExerciseViewController.h"
#import "Exercise.h"

@interface ExerciseViewController ()

@end

@implementation ExerciseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Exercise *anExercise = [[Exercise alloc] initWithID:@1 name:@"Single Stroke Roll" tier:@1 exerciseType:@"Single Stroke"];

    NSLog(@"Exercise ID: %@, Name: %@, Tier: %@, Type: %@", anExercise.id, anExercise.name, anExercise.tier, anExercise.exerciseType);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
