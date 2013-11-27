//
//  AppDelegate.m
//  test
//
//  Created by 黄伟铭 on 13-11-19.
//  Copyright (c) 2013年 黄伟铭. All rights reserved.
//

#import "AppDelegate.h"
#import "Player.h"
#import "PlayersViewController.h"
@implementation AppDelegate{
    NSMutableArray *players;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    players = [NSMutableArray arrayWithCapacity:20];
    Player *player = [[Player alloc]init];
    player.name = @"Bill Evans";
    player.game = @"Tic_Tac_Tae";
    player.rating = 5;
    [players addObject:player];
    player = [[Player alloc]init];
    player.name = @"HHHH";
    player.game = @"khkhfdskf";
    player.rating = 3;
    [players addObject:player];
    player = [[Player alloc]init];
    player.name = @"dffdf";
    player.game = @"dfdf";
    player.rating = 5;
    [players addObject:player];
    UITabBarController *tableBarController = (UITabBarController *)self.window.rootViewController;
    UINavigationController *navigationOController = [[tableBarController viewControllers]objectAtIndex:0];
    PlayersViewController *playersViewController =
    [[navigationOController viewControllers]objectAtIndex:0];
    playersViewController.players = players;
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
