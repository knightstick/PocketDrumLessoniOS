//
//  AppDelegate.m
//  PocketDrumLesson
//
//  Created by Test Mac on 31/01/2015.
//  Copyright (c) 2015 Chris Jewell. All rights reserved.
//

#import "AppDelegate.h"
#import "ExercisesIndexTableViewController.h"
#import "TypeViewController.h"
#import "TiersTableViewController.h"
#import "TypeTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    ExercisesIndexTableViewController *exercisesIndexTVC = [[ExercisesIndexTableViewController alloc] initWithStyle:UITableViewStylePlain];
    exercisesIndexTVC.tabBarItem.image = [UIImage imageNamed:@"snare_drum-50"];
    exercisesIndexTVC.title = @"All Exercises";
    UINavigationController *exercisesIndexNavController = [[UINavigationController alloc] initWithRootViewController:exercisesIndexTVC];
    
    
    TiersTableViewController *tiersTableViewController = [[TiersTableViewController alloc] initWithStyle:UITableViewStylePlain];
    tiersTableViewController.tabBarItem.image = [UIImage imageNamed:@"trophy-50"];
    tiersTableViewController.title = @"By Tiers";
    UINavigationController *tiersNavController = [[UINavigationController alloc] initWithRootViewController:tiersTableViewController];
    
    TypeTableViewController *typeTableViewController = [[TypeTableViewController alloc] initWithStyle:UITableViewStylePlain];
    typeTableViewController.title = @"By Type";
    typeTableViewController.tabBarItem.image = [UIImage imageNamed:@"elective-50"];
    UINavigationController *typeNavController = [[UINavigationController alloc] initWithRootViewController:typeTableViewController];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    [tabBarController setViewControllers:@[exercisesIndexNavController, tiersNavController, typeNavController]];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
