//
//  AppDelegate.m
//  Lablebi
//
//  Created by Slim Khan on 05/05/13.
//  Copyright (c) 2013 Slim Khan. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"
#import "LablebiDocs.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //Nos déclrations
    LablebiDocs *s1 =[[LablebiDocs alloc]initWithTitle:@"Halfaouine" La:10.223465 Lg:36.8347707];
    LablebiDocs *s2 = [[LablebiDocs alloc] initWithTitle:@"Weld elas" La:11.000000 Lg:30.02000000];
    LablebiDocs *s3 = [[LablebiDocs alloc] initWithTitle:@"Bou ahmed" La:12.000000 Lg:30.03000000];
    LablebiDocs *s4 = [[LablebiDocs alloc] initWithTitle:@"weld ebba" La:13.000000 Lg:30.04000000];
    
    NSMutableArray *blayes = [NSMutableArray arrayWithObjects:s1, s2, s3, s4, nil];

    UINavigationController * navController = (UINavigationController *) self.window.rootViewController;
    MasterViewController * masterController = [navController.viewControllers objectAtIndex:0];
    masterController.blayes = blayes;
    
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
