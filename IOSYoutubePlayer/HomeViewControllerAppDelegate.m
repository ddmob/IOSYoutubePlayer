//
//  HomeViewControllerAppDelegate.m
//  IOSYoutubePlayer
//
//  Created by DpzAtMicRO on 14/03/13.
//  Copyright (c) 2013 DpzAtMicRO. All rights reserved.
//

#import "HomeViewControllerAppDelegate.h"

#import "HomeViewControllerViewController.h"

@implementation HomeViewControllerAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[HomeViewControllerViewController alloc] initWithNibName:@"HomeViewControllerViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
